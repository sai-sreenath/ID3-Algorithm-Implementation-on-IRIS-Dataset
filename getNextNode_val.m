function [ tree ] = getNextNode_val(trainingData,class_values,rootIndex,tree,trainData_prev,attributes_names)
diff_values=sort(unique((trainData_prev(:,rootIndex)))); 
%creating new train data by removing the previous root colomn
next_TrainingData=trainingData;
next_TrainingData(:,rootIndex)=[];
%deleting previous root column and attribute
next_Attributes=attributes_names;
next_Attributes(:,rootIndex)=[];
j=1;
for i=1:size(diff_values)
try
[BIG rootIndex]=getBestEnt(class_values,next_TrainingData);
if(BIG==0)
    leaf_vals=class_values(:,1);
    node=leaf_vals(1);
else
    node= struct('value', next_Attributes(rootIndex), 'first', 'null','second','null', 'third', 'null','fourth','null','fifth','null','sixth','null','seventh','null','eight','null','nine','null','ten','null');
end
catch
    node=0;
end
if(j==1)
	tree.first=node;    
    if(~isnumeric(node))
        tree.first=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.first,trainData_prev,next_Attributes);
    end
end
if(j==2)
	tree.second=node;
    if(~isnumeric(node))        
        tree.second=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.second,trainData_prev,next_Attributes);
    end
end
if(j==3)
	tree.third=node;
    if(~isnumeric(node))
        tree.third=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.third,trainData_prev,next_Attributes);
    end
end
if(j==4)
	tree.fourth=node;
    if(~isnumeric(node))
        tree.fourth=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.fourth,trainData_prev,next_Attributes);
    end
end
if(j==5)
	tree.fifth=node;
    if(~isnumeric(node))
        tree.fifth=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.fifth,trainData_prev,next_Attributes);
    end
end
if(j==6)
	tree.sixth=node;
    if(~isnumeric(node))
        tree.sixth=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.sixth,trainData_prev,next_Attributes);
    end
end
if(j==7)
	tree.seventh=node;
    if(~isnumeric(node))
        tree.seventh=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.seventh,trainData_prev,next_Attributes);
    end
end
if(j==8)
	tree.eight=node;
    if(~isnumeric(node))
        tree.eight=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.eight,trainData_prev,next_Attributes);
    end
end
if(j==9)
	tree.nine=node;
    if(~isnumeric(node))
        tree.nine=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.nine,trainData_prev,next_Attributes);
    end
end
if(j==10)
	tree.ten=node;
    if(~isnumeric(node))
        tree.ten=getNextNode_val(next_TrainingData,class_values,rootIndex,tree.ten,trainData_prev,next_Attributes);
    end
end
j=j+1;
end
end