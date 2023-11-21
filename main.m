PopSize=50;
SearchDimension=50;
LoopCount=10000;
RunCount=51;
SearchScope=rand(SearchDimension,2);

for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end

FuncNum=1;



AdaptFuncValue_f1_D50_MIDE=rand(RunCount, LoopCount);
Result_f1_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f1_D50_MIDE(pp,:), AdaptFuncValue_f1_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f1_D50_MIDE = mean(AdaptFuncValue_f1_D50_MIDE, 1);
Result_avg_f1_D50_MIDE = mean(Result_f1_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f1_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f1_D50_MIDE = Result_avg_f1_D50_MIDE(1,SearchDimension+1) - 100
format shortE; Best_f1_D50_MIDE = min(Result_f1_D50_MIDE(:,SearchDimension+1)) - 100
format shortE; Worst_f1_D50_MIDE = max(Result_f1_D50_MIDE(:,SearchDimension+1)) - 100
format shortE; SD_f1_D50_MIDE = std(Result_f1_D50_MIDE(:,SearchDimension+1) - 100,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=3;



AdaptFuncValue_f3_D50_MIDE=rand(RunCount, LoopCount);
Result_f3_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f3_D50_MIDE(pp,:), AdaptFuncValue_f3_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f3_D50_MIDE = mean(AdaptFuncValue_f3_D50_MIDE, 1);
Result_avg_f3_D50_MIDE = mean(Result_f3_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f3_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f3_D50_MIDE = Result_avg_f3_D50_MIDE(1,SearchDimension+1) - 300
format shortE; Best_f3_D50_MIDE = min(Result_f3_D50_MIDE(:,SearchDimension+1)) - 300
format shortE; Worst_f3_D50_MIDE = max(Result_f3_D50_MIDE(:,SearchDimension+1)) - 300
format shortE; SD_f3_D50_MIDE = std(Result_f3_D50_MIDE(:,SearchDimension+1) - 300,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=4;



AdaptFuncValue_f4_D50_MIDE=rand(RunCount, LoopCount);
Result_f4_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f4_D50_MIDE(pp,:), AdaptFuncValue_f4_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f4_D50_MIDE = mean(AdaptFuncValue_f4_D50_MIDE, 1);
Result_avg_f4_D50_MIDE = mean(Result_f4_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f4_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f4_D50_MIDE = Result_avg_f4_D50_MIDE(1,SearchDimension+1) - 400
format shortE; Best_f4_D50_MIDE = min(Result_f4_D50_MIDE(:,SearchDimension+1)) - 400
format shortE; Worst_f4_D50_MIDE = max(Result_f4_D50_MIDE(:,SearchDimension+1)) - 400
format shortE; SD_f4_D50_MIDE = std(Result_f4_D50_MIDE(:,SearchDimension+1) - 400,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=5;



AdaptFuncValue_f5_D50_MIDE=rand(RunCount, LoopCount);
Result_f5_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f5_D50_MIDE(pp,:), AdaptFuncValue_f5_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f5_D50_MIDE = mean(AdaptFuncValue_f5_D50_MIDE, 1);
Result_avg_f5_D50_MIDE = mean(Result_f5_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f5_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f5_D50_MIDE = Result_avg_f5_D50_MIDE(1,SearchDimension+1) - 500
format shortE; Best_f5_D50_MIDE = min(Result_f5_D50_MIDE(:,SearchDimension+1)) - 500
format shortE; Worst_f5_D50_MIDE = max(Result_f5_D50_MIDE(:,SearchDimension+1)) - 500
format shortE; SD_f5_D50_MIDE = std(Result_f5_D50_MIDE(:,SearchDimension+1) - 500,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=6;



AdaptFuncValue_f6_D50_MIDE=rand(RunCount, LoopCount);
Result_f6_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f6_D50_MIDE(pp,:), AdaptFuncValue_f6_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f6_D50_MIDE = mean(AdaptFuncValue_f6_D50_MIDE, 1);
Result_avg_f6_D50_MIDE = mean(Result_f6_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f6_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f6_D50_MIDE = Result_avg_f6_D50_MIDE(1,SearchDimension+1) - 600
format shortE; Best_f6_D50_MIDE = min(Result_f6_D50_MIDE(:,SearchDimension+1)) - 600
format shortE; Worst_f6_D50_MIDE = max(Result_f6_D50_MIDE(:,SearchDimension+1)) - 600
format shortE; SD_f6_D50_MIDE = std(Result_f6_D50_MIDE(:,SearchDimension+1) - 600,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=7;



AdaptFuncValue_f7_D50_MIDE=rand(RunCount, LoopCount);
Result_f7_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f7_D50_MIDE(pp,:), AdaptFuncValue_f7_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f7_D50_MIDE = mean(AdaptFuncValue_f7_D50_MIDE, 1);
Result_avg_f7_D50_MIDE = mean(Result_f7_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f7_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f7_D50_MIDE = Result_avg_f7_D50_MIDE(1,SearchDimension+1) - 700
format shortE; Best_f7_D50_MIDE = min(Result_f7_D50_MIDE(:,SearchDimension+1)) - 700
format shortE; Worst_f7_D50_MIDE = max(Result_f7_D50_MIDE(:,SearchDimension+1)) - 700
format shortE; SD_f7_D50_MIDE = std(Result_f7_D50_MIDE(:,SearchDimension+1) - 700,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=8;



AdaptFuncValue_f8_D50_MIDE=rand(RunCount, LoopCount);
Result_f8_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f8_D50_MIDE(pp,:), AdaptFuncValue_f8_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc
%If X = [0 1 2; 3 4 5], then mean(X,1) is [1.5 2.5 3.5] and mean(X,2) is [1; 4]
AdaptFuncValue_avg_f8_D50_MIDE = mean(AdaptFuncValue_f8_D50_MIDE, 1);
Result_avg_f8_D50_MIDE = mean(Result_f8_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f8_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f8_D50_MIDE = Result_avg_f8_D50_MIDE(1,SearchDimension+1) - 800
format shortE; Best_f8_D50_MIDE = min(Result_f8_D50_MIDE(:,SearchDimension+1)) - 800
format shortE; Worst_f8_D50_MIDE = max(Result_f8_D50_MIDE(:,SearchDimension+1)) - 800
format shortE; SD_f8_D50_MIDE = std(Result_f8_D50_MIDE(:,SearchDimension+1) - 800,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=9;



AdaptFuncValue_f9_D50_MIDE=rand(RunCount, LoopCount);
Result_f9_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f9_D50_MIDE(pp,:), AdaptFuncValue_f9_D50_MIDE(pp,:)]=MIDE (PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f9_D50_MIDE = mean(AdaptFuncValue_f9_D50_MIDE, 1);
Result_avg_f9_D50_MIDE = mean(Result_f9_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f9_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f9_D50_MIDE = Result_avg_f9_D50_MIDE(1,SearchDimension+1) - 900
format shortE; Best_f9_D50_MIDE = min(Result_f9_D50_MIDE(:,SearchDimension+1)) - 900
format shortE; Worst_f9_D50_MIDE = max(Result_f9_D50_MIDE(:,SearchDimension+1)) - 900
format shortE; SD_f9_D50_MIDE = std(Result_f9_D50_MIDE(:,SearchDimension+1) - 900,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=10;



AdaptFuncValue_f10_D50_MIDE=rand(RunCount, LoopCount);
Result_f10_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f10_D50_MIDE(pp,:),AdaptFuncValue_f10_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f10_D50_MIDE = mean(AdaptFuncValue_f10_D50_MIDE, 1);
Result_avg_f10_D50_MIDE = mean(Result_f10_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f10_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f10_D50_MIDE = Result_avg_f10_D50_MIDE(1,SearchDimension+1) - 1000
format shortE; Best_f10_D50_MIDE = min(Result_f10_D50_MIDE(:,SearchDimension+1)) - 1000
format shortE; Worst_f10_D50_MIDE = max(Result_f10_D50_MIDE(:,SearchDimension+1)) - 1000
format shortE; SD_f10_D50_MIDE = std(Result_f10_D50_MIDE(:,SearchDimension+1) - 1000,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=11;



AdaptFuncValue_f11_D50_MIDE=rand(RunCount, LoopCount);
Result_f11_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f11_D50_MIDE(pp,:),AdaptFuncValue_f11_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f11_D50_MIDE = mean(AdaptFuncValue_f11_D50_MIDE, 1);
Result_avg_f11_D50_MIDE = mean(Result_f11_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f11_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f11_D50_MIDE = Result_avg_f11_D50_MIDE(1,SearchDimension+1) - 1100
format shortE; Best_f11_D50_MIDE = min(Result_f11_D50_MIDE(:,SearchDimension+1)) - 1100
format shortE; Worst_f11_D50_MIDE = max(Result_f11_D50_MIDE(:,SearchDimension+1)) - 1100
format shortE; SD_f11_D50_MIDE = std(Result_f11_D50_MIDE(:,SearchDimension+1) - 1100,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=12;



AdaptFuncValue_f12_D50_MIDE=rand(RunCount, LoopCount);
Result_f12_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f12_D50_MIDE(pp,:),AdaptFuncValue_f12_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f12_D50_MIDE = mean(AdaptFuncValue_f12_D50_MIDE, 1);
Result_avg_f12_D50_MIDE = mean(Result_f12_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f12_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f12_D50_MIDE = Result_avg_f12_D50_MIDE(1,SearchDimension+1) - 1200
format shortE; Best_f12_D50_MIDE = min(Result_f12_D50_MIDE(:,SearchDimension+1)) - 1200
format shortE; Worst_f12_D50_MIDE = max(Result_f12_D50_MIDE(:,SearchDimension+1)) - 1200
format shortE; SD_f12_D50_MIDE = std(Result_f12_D50_MIDE(:,SearchDimension+1) - 1200,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=13;



AdaptFuncValue_f13_D50_MIDE=rand(RunCount, LoopCount);
Result_f13_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f13_D50_MIDE(pp,:),AdaptFuncValue_f13_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f13_D50_MIDE = mean(AdaptFuncValue_f13_D50_MIDE, 1);
Result_avg_f13_D50_MIDE = mean(Result_f13_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f13_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f13_D50_MIDE = Result_avg_f13_D50_MIDE(1,SearchDimension+1) - 1300
format shortE; Best_f13_D50_MIDE = min(Result_f13_D50_MIDE(:,SearchDimension+1)) - 1300
format shortE; Worst_f13_D50_MIDE = max(Result_f13_D50_MIDE(:,SearchDimension+1)) - 1300
format shortE; SD_f13_D50_MIDE = std(Result_f13_D50_MIDE(:,SearchDimension+1) - 1300,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=14;



AdaptFuncValue_f14_D50_MIDE=rand(RunCount, LoopCount);
Result_f14_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f14_D50_MIDE(pp,:),AdaptFuncValue_f14_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f14_D50_MIDE = mean(AdaptFuncValue_f14_D50_MIDE, 1);
Result_avg_f14_D50_MIDE = mean(Result_f14_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f14_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f14_D50_MIDE = Result_avg_f14_D50_MIDE(1,SearchDimension+1) - 1400
format shortE; Best_f14_D50_MIDE = min(Result_f14_D50_MIDE(:,SearchDimension+1)) - 1400
format shortE; Worst_f14_D50_MIDE = max(Result_f14_D50_MIDE(:,SearchDimension+1)) - 1400
format shortE; SD_f14_D50_MIDE = std(Result_f14_D50_MIDE(:,SearchDimension+1) - 1400,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=15;



AdaptFuncValue_f15_D50_MIDE=rand(RunCount, LoopCount);
Result_f15_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f15_D50_MIDE(pp,:),AdaptFuncValue_f15_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f15_D50_MIDE = mean(AdaptFuncValue_f15_D50_MIDE, 1);
Result_avg_f15_D50_MIDE = mean(Result_f15_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f15_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f15_D50_MIDE = Result_avg_f15_D50_MIDE(1,SearchDimension+1) - 1500
format shortE; Best_f15_D50_MIDE = min(Result_f15_D50_MIDE(:,SearchDimension+1)) - 1500
format shortE; Worst_f15_D50_MIDE = max(Result_f15_D50_MIDE(:,SearchDimension+1)) - 1500
format shortE; SD_f15_D50_MIDE = std(Result_f15_D50_MIDE(:,SearchDimension+1) - 1500,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=16;



AdaptFuncValue_f16_D50_MIDE=rand(RunCount, LoopCount);
Result_f16_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f16_D50_MIDE(pp,:),AdaptFuncValue_f16_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f16_D50_MIDE = mean(AdaptFuncValue_f16_D50_MIDE, 1);
Result_avg_f16_D50_MIDE = mean(Result_f16_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f16_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f16_D50_MIDE = Result_avg_f16_D50_MIDE(1,SearchDimension+1) - 1600
format shortE; Best_f16_D50_MIDE = min(Result_f16_D50_MIDE(:,SearchDimension+1)) - 1600
format shortE; Worst_f16_D50_MIDE = max(Result_f16_D50_MIDE(:,SearchDimension+1)) - 1600
format shortE; SD_f16_D50_MIDE = std(Result_f16_D50_MIDE(:,SearchDimension+1) - 1600,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=17;



AdaptFuncValue_f17_D50_MIDE=rand(RunCount, LoopCount);
Result_f17_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f17_D50_MIDE(pp,:),AdaptFuncValue_f17_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f17_D50_MIDE = mean(AdaptFuncValue_f17_D50_MIDE, 1);
Result_avg_f17_D50_MIDE = mean(Result_f17_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f17_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f17_D50_MIDE = Result_avg_f17_D50_MIDE(1,SearchDimension+1) - 1700
format shortE; Best_f17_D50_MIDE = min(Result_f17_D50_MIDE(:,SearchDimension+1)) - 1700
format shortE; Worst_f17_D50_MIDE = max(Result_f17_D50_MIDE(:,SearchDimension+1)) - 1700
format shortE; SD_f17_D50_MIDE = std(Result_f17_D50_MIDE(:,SearchDimension+1) - 1700,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=18;



AdaptFuncValue_f18_D50_MIDE=rand(RunCount, LoopCount);
Result_f18_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f18_D50_MIDE(pp,:),AdaptFuncValue_f18_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f18_D50_MIDE = mean(AdaptFuncValue_f18_D50_MIDE, 1);
Result_avg_f18_D50_MIDE = mean(Result_f18_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f18_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f18_D50_MIDE = Result_avg_f18_D50_MIDE(1,SearchDimension+1) - 1800
format shortE; Best_f18_D50_MIDE = min(Result_f18_D50_MIDE(:,SearchDimension+1)) - 1800
format shortE; Worst_f18_D50_MIDE = max(Result_f18_D50_MIDE(:,SearchDimension+1)) - 1800
format shortE; SD_f18_D50_MIDE = std(Result_f18_D50_MIDE(:,SearchDimension+1) - 1800,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=19;



AdaptFuncValue_f19_D50_MIDE=rand(RunCount, LoopCount);
Result_f19_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f19_D50_MIDE(pp,:),AdaptFuncValue_f19_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f19_D50_MIDE = mean(AdaptFuncValue_f19_D50_MIDE, 1);
Result_avg_f19_D50_MIDE = mean(Result_f19_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f19_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f19_D50_MIDE = Result_avg_f19_D50_MIDE(1,SearchDimension+1) - 1900
format shortE; Best_f19_D50_MIDE = min(Result_f19_D50_MIDE(:,SearchDimension+1)) - 1900
format shortE; Worst_f19_D50_MIDE = max(Result_f19_D50_MIDE(:,SearchDimension+1)) - 1900
format shortE; SD_f19_D50_MIDE = std(Result_f19_D50_MIDE(:,SearchDimension+1) - 1900,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=20;



AdaptFuncValue_f20_D50_MIDE=rand(RunCount, LoopCount);
Result_f20_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f20_D50_MIDE(pp,:),AdaptFuncValue_f20_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f20_D50_MIDE = mean(AdaptFuncValue_f20_D50_MIDE, 1);
Result_avg_f20_D50_MIDE = mean(Result_f20_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f20_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f20_D50_MIDE = Result_avg_f20_D50_MIDE(1,SearchDimension+1) - 2000
format shortE; Best_f20_D50_MIDE = min(Result_f20_D50_MIDE(:,SearchDimension+1)) - 2000
format shortE; Worst_f20_D50_MIDE = max(Result_f20_D50_MIDE(:,SearchDimension+1)) - 2000
format shortE; SD_f20_D50_MIDE = std(Result_f20_D50_MIDE(:,SearchDimension+1) - 2000,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=21;



AdaptFuncValue_f21_D50_MIDE=rand(RunCount, LoopCount);
Result_f21_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f21_D50_MIDE(pp,:),AdaptFuncValue_f21_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f21_D50_MIDE = mean(AdaptFuncValue_f21_D50_MIDE, 1);
Result_avg_f21_D50_MIDE = mean(Result_f21_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f21_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f21_D50_MIDE = Result_avg_f21_D50_MIDE(1,SearchDimension+1) - 2100
format shortE; Best_f21_D50_MIDE = min(Result_f21_D50_MIDE(:,SearchDimension+1)) - 2100
format shortE; Worst_f21_D50_MIDE = max(Result_f21_D50_MIDE(:,SearchDimension+1)) - 2100
format shortE; SD_f21_D50_MIDE = std(Result_f21_D50_MIDE(:,SearchDimension+1) - 2100,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=22;



AdaptFuncValue_f22_D50_MIDE=rand(RunCount, LoopCount);
Result_f22_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f22_D50_MIDE(pp,:),AdaptFuncValue_f22_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f22_D50_MIDE = mean(AdaptFuncValue_f22_D50_MIDE, 1);
Result_avg_f22_D50_MIDE = mean(Result_f22_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f22_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f22_D50_MIDE = Result_avg_f22_D50_MIDE(1,SearchDimension+1) - 2200
format shortE; Best_f22_D50_MIDE = min(Result_f22_D50_MIDE(:,SearchDimension+1)) - 2200
format shortE; Worst_f22_D50_MIDE = max(Result_f22_D50_MIDE(:,SearchDimension+1)) - 2200
format shortE; SD_f22_D50_MIDE = std(Result_f22_D50_MIDE(:,SearchDimension+1) - 2200,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=23;



AdaptFuncValue_f23_D50_MIDE=rand(RunCount, LoopCount);
Result_f23_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f23_D50_MIDE(pp,:),AdaptFuncValue_f23_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f23_D50_MIDE = mean(AdaptFuncValue_f23_D50_MIDE, 1);
Result_avg_f23_D50_MIDE = mean(Result_f23_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f23_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f23_D50_MIDE = Result_avg_f23_D50_MIDE(1,SearchDimension+1) - 2300
format shortE; Best_f23_D50_MIDE = min(Result_f23_D50_MIDE(:,SearchDimension+1)) - 2300
format shortE; Worst_f23_D50_MIDE = max(Result_f23_D50_MIDE(:,SearchDimension+1)) - 2300
format shortE; SD_f23_D50_MIDE = std(Result_f23_D50_MIDE(:,SearchDimension+1) - 2300,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=24;



AdaptFuncValue_f24_D50_MIDE=rand(RunCount, LoopCount);
Result_f24_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f24_D50_MIDE(pp,:),AdaptFuncValue_f24_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f24_D50_MIDE = mean(AdaptFuncValue_f24_D50_MIDE, 1);
Result_avg_f24_D50_MIDE = mean(Result_f24_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f24_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f24_D50_MIDE = Result_avg_f24_D50_MIDE(1,SearchDimension+1) - 2400
format shortE; Best_f24_D50_MIDE = min(Result_f24_D50_MIDE(:,SearchDimension+1)) - 2400
format shortE; Worst_f24_D50_MIDE = max(Result_f24_D50_MIDE(:,SearchDimension+1)) - 2400
format shortE; SD_f24_D50_MIDE = std(Result_f24_D50_MIDE(:,SearchDimension+1) - 2400,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=25;



AdaptFuncValue_f25_D50_MIDE=rand(RunCount, LoopCount);
Result_f25_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f25_D50_MIDE(pp,:),AdaptFuncValue_f25_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f25_D50_MIDE = mean(AdaptFuncValue_f25_D50_MIDE, 1);
Result_avg_f25_D50_MIDE = mean(Result_f25_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f25_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f25_D50_MIDE = Result_avg_f25_D50_MIDE(1,SearchDimension+1) - 2500
format shortE; Best_f25_D50_MIDE = min(Result_f25_D50_MIDE(:,SearchDimension+1)) - 2500
format shortE; Worst_f25_D50_MIDE = max(Result_f25_D50_MIDE(:,SearchDimension+1)) - 2500
format shortE; SD_f25_D50_MIDE = std(Result_f25_D50_MIDE(:,SearchDimension+1) - 2500,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=26;



AdaptFuncValue_f26_D50_MIDE=rand(RunCount, LoopCount);
Result_f26_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f26_D50_MIDE(pp,:),AdaptFuncValue_f26_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f26_D50_MIDE = mean(AdaptFuncValue_f26_D50_MIDE, 1);
Result_avg_f26_D50_MIDE = mean(Result_f26_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f26_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f26_D50_MIDE = Result_avg_f26_D50_MIDE(1,SearchDimension+1) - 2600
format shortE; Best_f26_D50_MIDE = min(Result_f26_D50_MIDE(:,SearchDimension+1)) - 2600
format shortE; Worst_f26_D50_MIDE = max(Result_f26_D50_MIDE(:,SearchDimension+1)) - 2600
format shortE; SD_f26_D50_MIDE = std(Result_f26_D50_MIDE(:,SearchDimension+1) - 2600,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=27;



AdaptFuncValue_f27_D50_MIDE=rand(RunCount, LoopCount);
Result_f27_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f27_D50_MIDE(pp,:),AdaptFuncValue_f27_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f27_D50_MIDE = mean(AdaptFuncValue_f27_D50_MIDE, 1);
Result_avg_f27_D50_MIDE = mean(Result_f27_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f27_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f27_D50_MIDE = Result_avg_f27_D50_MIDE(1,SearchDimension+1) - 2700
format shortE; Best_f27_D50_MIDE = min(Result_f27_D50_MIDE(:,SearchDimension+1)) - 2700
format shortE; Worst_f27_D50_MIDE = max(Result_f27_D50_MIDE(:,SearchDimension+1)) - 2700
format shortE; SD_f27_D50_MIDE = std(Result_f27_D50_MIDE(:,SearchDimension+1) - 2700,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=28;



AdaptFuncValue_f28_D50_MIDE=rand(RunCount, LoopCount);
Result_f28_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f28_D50_MIDE(pp,:),AdaptFuncValue_f28_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f28_D50_MIDE = mean(AdaptFuncValue_f28_D50_MIDE, 1);
Result_avg_f28_D50_MIDE = mean(Result_f28_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f28_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f28_D50_MIDE = Result_avg_f28_D50_MIDE(1,SearchDimension+1) - 2800
format shortE; Best_f28_D50_MIDE = min(Result_f28_D50_MIDE(:,SearchDimension+1)) - 2800
format shortE; Worst_f28_D50_MIDE = max(Result_f28_D50_MIDE(:,SearchDimension+1)) - 2800
format shortE; SD_f28_D50_MIDE = std(Result_f28_D50_MIDE(:,SearchDimension+1) - 2800,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=29;



AdaptFuncValue_f29_D50_MIDE=rand(RunCount, LoopCount);
Result_f29_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f29_D50_MIDE(pp,:),AdaptFuncValue_f29_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f29_D50_MIDE = mean(AdaptFuncValue_f29_D50_MIDE, 1);
Result_avg_f29_D50_MIDE = mean(Result_f29_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f29_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f29_D50_MIDE = Result_avg_f29_D50_MIDE(1,SearchDimension+1) - 2900
format shortE; Best_f29_D50_MIDE = min(Result_f29_D50_MIDE(:,SearchDimension+1)) - 2900
format shortE; Worst_f29_D50_MIDE = max(Result_f29_D50_MIDE(:,SearchDimension+1)) - 2900
format shortE; SD_f29_D50_MIDE = std(Result_f29_D50_MIDE(:,SearchDimension+1) - 2900,1);



for i=1: SearchDimension
    SearchScope(i,:)=[-100 100];
end
FuncNum=30;



AdaptFuncValue_f30_D50_MIDE=rand(RunCount, LoopCount);
Result_f30_D50_MIDE=rand(RunCount, SearchDimension+1);
tic
for pp=1: RunCount
    [Result_f30_D50_MIDE(pp,:),AdaptFuncValue_f30_D50_MIDE(pp,:)]=MIDE(PopSize, SearchDimension, SearchScope, FuncNum, LoopCount);
end
toc

AdaptFuncValue_avg_f30_D50_MIDE = mean(AdaptFuncValue_f30_D50_MIDE, 1);
Result_avg_f30_D50_MIDE = mean(Result_f30_D50_MIDE, 1);
semilogy(AdaptFuncValue_avg_f30_D50_MIDE-100*FuncNum,'LineWidth', 2);grid on;
format shortE; Mean_f30_D50_MIDE = Result_avg_f30_D50_MIDE(1,SearchDimension+1) - 3000
format shortE; Best_f30_D50_MIDE = min(Result_f30_D50_MIDE(:,SearchDimension+1)) - 3000
format shortE; Worst_f30_D50_MIDE = max(Result_f30_D50_MIDE(:,SearchDimension+1)) - 3000
format shortE; SD_f30_D50_MIDE = std(Result_f30_D50_MIDE(:,SearchDimension+1) - 3000,1);
filename = 'MIDE_CEC2017_D50.mat';
save(filename)
