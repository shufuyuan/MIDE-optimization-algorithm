function [Result,AdaptFuncValue] = MIDE(NP,D,SScope,FuncNo,MaxGen)
rand('state',sum(100*clock));
PopSize_Input = D;
NFEmax = MaxGen*PopSize_Input;
POPO = [];
T = 0.3*D; % Set the maximum number of stagnation of each individual
SA = NP;
delta = 0.1;
CR = 0.9;
POPS = rand(NP,D+1);
for d = 1:D
    if SScope(d,1)==-inf && SScope(d,2)~=inf
        POPS(:,d) = unifrnd(SScope(d,2)-10^10,SScope(d,2),NP,1);
    end

    if SScope(d,1)~=-inf && SScope(d,2)==inf
        POPS(:,d) = unifrnd(SScope(d,1),SScope(d,1)+10^10,NP,1);
    end

    if SScope(d,1)==-inf && SScope(d,2)==inf
        POPS(:,d) = unifrnd(-10^10,10^10,NP,1);
    end

    if SScope(d,1)~=-inf && SScope(d,2)~=inf
        POPS(:,d) = POPS(:,d)*(SScope(d,2)-SScope(d,1))+SScope(d,1);
    end
end

POPS(1:NP,D+1) = cec17_func(POPS(1:NP,1:D)',FuncNo)';
[~,row] = min(POPS(1:NP,D+1));
BEST = POPS(row,1:D+1);
nn = 1;
SearchProcess(1,nn) = POPS(1,D+1);
nn = nn + 1;

for ii = 2:NP
    if SearchProcess(1,nn-1) > POPS(ii,D+1)
        SearchProcess(1,nn) = POPS(ii,D+1);
        nn = nn + 1;
    else
        SearchProcess(1,nn) = SearchProcess(1,nn-1);
        nn = nn + 1;
    end
end
nfes = 0;
k = 1;
POPS(:,D+2) = zeros(NP,1);
CCC = zeros(NP,1);
while nfes < NFEmax
    POPM = [POPS;POPO];
    PopMSolution = size(POPM,1);
    [BestFitness, ~] = min(POPM(1:end,D+1));
    str = ['F' num2str(FuncNo) ' Iter:' num2str(k)...
        ' Eval:' num2str(nfes) ' Best:'...
        num2str(BestFitness-100*FuncNo,'%e')];
    disp(str);
    nrandI = 2;
    rr = zeros(NP,nrandI);
    for i = 1:NP
        aa = 1:PopMSolution;
        bb = randperm (numel(aa));
        rr(i,:) = aa(bb(1:nrandI));
    end

    MeanF = 0.9 - 0.8 * (nfes-1)/(NFEmax-1);
    F = unifrnd(MeanF - delta,MeanF + delta);


    [~,indexbest] = sort(POPM(1:end,1+D),'ascend');
    p = 1 - 1*(nfes/NFEmax)^1;
    pNP = round(max(1,PopMSolution*p));
    randindex = ceil(rand(NP,1)*pNP);
    randindex = indexbest(randindex);

    Xpbest = POPM(randindex,1:D);
    V = zeros(NP,D);
    V(1:NP,1:D) = Xpbest +...
        F*(POPM(rr(1:NP,1),1:D) - POPM(rr(1:NP,2),1:D));

    V(1:NP,1:D) = ...
        ((V(1:NP,1:D)>=repmat(SScope(:,1)',[NP,1]))&(V(1:NP,1:D)<=repmat(SScope(:,2)',[NP,1]))).*(V(1:NP,1:D))+...
        (V(1:NP,1:D)<repmat(SScope(:,1)',[NP,1])).*((repmat(SScope(:,1)',[NP,1])+POPS(1:NP,1:D))./2)+...
        (V(1:NP,1:D)>repmat(SScope(:,2)',[NP,1])).*((repmat(SScope(:,2)',[NP,1])+POPS(1:NP,1:D))./2);
    U = POPS(1:NP,1:D+1);
    jRand = ceil(rand(NP,1)*D);
    jRand = repmat(jRand,[1,D]);
    j = 1:D;
    j = repmat(j,[NP,1]);
    I = (rand(NP,D) < repmat(CR,[NP,D])) | (j == jRand);
    U(I) = V(I);
    U(1:NP,D+1) = cec17_func(U(1:NP,1:D)',FuncNo);
    nfes = nfes + NP;
    tmp = (U(1:NP,D+1) < POPS(1:NP,D+1));
    temp = repmat(tmp,1,D+1);

    POPS(1:end,D+2) = (1-tmp).*(POPS(1:end,D+2)+1);

    POPS(1:NP,1:D+1) = temp.*U(1:NP,1:D+1) + (1-temp).*POPS(1:NP,1:D+1);
    for i = 1:NP
        SearchProcess(1,nn) = ...
            (SearchProcess(1,nn-1) > POPS(i,D+1)).*POPS(i,D+1) +...
            (SearchProcess(1,nn-1) <= POPS(i,D+1)).*SearchProcess(1,nn-1);
        nn = nn + 1;
    end

    POPM = [POPS;POPO];
    [INDEX,~]= find((POPS(1:NP,D+2) == T) == 1);
    [~,indexxx] = min(POPS(1:NP,D+1));
    if ismember(indexxx,INDEX)
        CCC(indexxx,1) = CCC(indexxx,1) + 1;
    end
    if ~isempty(INDEX)
        POPO = [POPO;POPS(INDEX,:)];
        POP = numel(INDEX);
        X = zeros(POP,D+1);
        [~,indexbest] = sort(POPM(1:end,1+D),'ascend');
        p = 1 - 1*(nfes/NFEmax)^1;
        pNP = round(max(1,PopMSolution*p));
        randindex = ceil(rand(POP,1)*pNP);
        randindex = indexbest(randindex);
        Xpbest = POPM(randindex,1:D);

        V1 = zeros(POP,D);

        nrandI = 2;
        rrr = zeros(POP,nrandI);
        for i = 1:POP
            aa = 1:PopMSolution;
            bb = randperm (numel(aa));
            rrr(i,:) = aa(bb(1:nrandI));
        end
        MeanF = 0.9 - 0.8 * nfes/NFEmax;
        F = unifrnd(MeanF - delta,MeanF + delta);

        V1(1:POP,1:D) = Xpbest + ...
            F*(POPM(rrr(1:POP,1),1:D) - POPM(rrr(1:POP,2),1:D));

        V1 = ...
            ((V1>=repmat(SScope(:,1)',[POP,1]))&(V1<=repmat(SScope(:,2)',[POP,1]))).*(V1)+...
            (V1<repmat(SScope(:,1)',[POP,1])).*((repmat(SScope(:,1)',[POP,1])+POPS(INDEX,1:D))./2)+...
            (V1>repmat(SScope(:,2)',[POP,1])).*((repmat(SScope(:,2)',[POP,1])+POPS(INDEX,1:D))./2);

        V1(1:POP,D+1) = cec17_func(V1(1:POP,1:D)',FuncNo)';
        X(1:POP,1:D+1) = V1;

        for i = 1 : POP
            SearchProcess(1,nn) = ...
                (SearchProcess(1,nn-1) > X(i,D+1)).*X(i,D+1) +...
                (SearchProcess(1,nn-1) <= X(i,D+1)).*SearchProcess(1,nn-1);
            nn = nn + 1;
        end

        nfes = nfes + POP;

        X(1:POP,D+2) = 0;
        POPS(INDEX,:) = X;
    end

    if size(POPO,1) > round(SA)
        [~,indexold] = sort(POPO(:,D+1),'ascend');
        POPO = POPO(indexold(1:SA),:);
    end

    POPM = [POPS(1:end,:);POPO];

    [~,row] = min(POPM(1:end,D+1));
    BEST = POPM(row,1:D+1);

    k = k + 1;
end % stop the main loop
kk = 1:MaxGen;
AdaptFuncValue = SearchProcess(PopSize_Input.*kk);
Result = BEST;
end