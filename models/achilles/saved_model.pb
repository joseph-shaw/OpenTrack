Ђ+
щК
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8)
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:@@*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:@*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:@ *
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
: *
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

: *
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_namelstm_3/lstm_cell_3/kernel

-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/kernel*
_output_shapes
:	*
dtype0
Ѓ
#lstm_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*4
shared_name%#lstm_3/lstm_cell_3/recurrent_kernel

7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_3/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_3/lstm_cell_3/bias

+lstm_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_3/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:@@*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_3/lstm_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/m

4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/m*
_output_shapes
:	*
dtype0
Б
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
Њ
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm_3/lstm_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_3/lstm_cell_3/bias/m

2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:@@*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_3/lstm_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/lstm_3/lstm_cell_3/kernel/v

4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_3/kernel/v*
_output_shapes
:	*
dtype0
Б
*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
Њ
>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm_3/lstm_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_3/lstm_cell_3/bias/v

2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_3/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
Ю:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*:
valueџ9Bќ9 Bѕ9
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api

*iter

+beta_1

,beta_2
	-decay
.learning_ratem_m`mambmcmd$me%mf/mg0mh1mivjvkvlvmvnvo$vp%vq/vr0vs1vt
N
/0
01
12
3
4
5
6
7
8
$9
%10
N
/0
01
12
3
4
5
6
7
8
$9
%10
 
­
	variables
2layer_metrics

3layers
4layer_regularization_losses
trainable_variables
5metrics
6non_trainable_variables
	regularization_losses
 
~

/kernel
0recurrent_kernel
1bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

/0
01
12

/0
01
12
 
Й
	variables
;layer_metrics

<layers
=layer_regularization_losses
trainable_variables
>metrics
?non_trainable_variables

@states
regularization_losses
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
	variables
Alayer_metrics
Blayer_regularization_losses

Clayers
trainable_variables
Dmetrics
Enon_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
	variables
Flayer_metrics
Glayer_regularization_losses

Hlayers
trainable_variables
Imetrics
Jnon_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
 	variables
Klayer_metrics
Llayer_regularization_losses

Mlayers
!trainable_variables
Nmetrics
Onon_trainable_variables
"regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
&	variables
Player_metrics
Qlayer_regularization_losses

Rlayers
'trainable_variables
Smetrics
Tnon_trainable_variables
(regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_3/lstm_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_3/lstm_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_3/lstm_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 

U0
 

/0
01
12

/0
01
12
 
­
7	variables
Vlayer_metrics
Wlayer_regularization_losses

Xlayers
8trainable_variables
Ymetrics
Znon_trainable_variables
9regularization_losses
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	[total
	\count
]	variables
^	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

]	variables
~|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_3/lstm_cell_3/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_3/lstm_cell_3/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_3_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
Ї
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_3_inputlstm_3/lstm_cell_3/kernellstm_3/lstm_cell_3/bias#lstm_3/lstm_cell_3/recurrent_kerneldense_15/kerneldense_15/biasdense_14/kerneldense_14/biasdense_13/kerneldense_13/biasdense_12/kerneldense_12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1767543
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
м
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_3/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/m/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_3/kernel/v/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_3/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_1770069
З	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_15/kerneldense_15/biasdense_14/kerneldense_14/biasdense_13/kerneldense_13/biasdense_12/kerneldense_12/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_3/lstm_cell_3/kernel#lstm_3/lstm_cell_3/recurrent_kernellstm_3/lstm_cell_3/biastotalcountAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/m Adam/lstm_3/lstm_cell_3/kernel/m*Adam/lstm_3/lstm_cell_3/recurrent_kernel/mAdam/lstm_3/lstm_cell_3/bias/mAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/v Adam/lstm_3/lstm_cell_3/kernel/v*Adam/lstm_3/lstm_cell_3/recurrent_kernel/vAdam/lstm_3/lstm_cell_3/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_1770199Щы'
р

H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769794

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeб
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2жЈх2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeз
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2к2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeж
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Џ]2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeз
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Бээ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Mul_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_3`
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulf
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1f
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2f
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
addW
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3b
Mul_4Muladd:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_4d
Add_1Add	Mul_4:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_2W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5d
Mul_5Mul	add_2:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_5d
Add_3Add	Mul_5:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1f
mul_6Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_6}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanhd
mul_7Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_7_
add_5AddV2	mul_6:z:0	mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_6W
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_6W
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_7d
Mul_8Mul	add_6:z:0Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_8d
Add_7Add	Mul_8:z:0Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1h
mul_9Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_9з
IdentityIdentity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityл

Identity_1Identity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1л

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/1
ФЃ
Ч
while_body_1769413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_liket
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ђ
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulІ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1І
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2І
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
А
Ш
while_cond_1768445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1768445___redundant_placeholder05
1while_while_cond_1768445___redundant_placeholder15
1while_while_cond_1768445___redundant_placeholder25
1while_while_cond_1768445___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
	

.__inference_sequential_3_layer_call_fn_1768254

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_17674232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я	
о
E__inference_dense_15_layer_call_and_return_conditional_losses_1769596

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

и
&sequential_3_lstm_3_while_cond_1765637D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3F
Bsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1]
Ysequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_1765637___redundant_placeholder0]
Ysequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_1765637___redundant_placeholder1]
Ysequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_1765637___redundant_placeholder2]
Ysequential_3_lstm_3_while_sequential_3_lstm_3_while_cond_1765637___redundant_placeholder3&
"sequential_3_lstm_3_while_identity
д
sequential_3/lstm_3/while/LessLess%sequential_3_lstm_3_while_placeholderBsequential_3_lstm_3_while_less_sequential_3_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/while/Less
"sequential_3/lstm_3/while/IdentityIdentity"sequential_3/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
о

*__inference_dense_14_layer_call_fn_1769625

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_17672882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Л
Э
-__inference_lstm_cell_3_layer_call_fn_1769926

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17660832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/1
А
Ш
while_cond_1769097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1769097___redundant_placeholder05
1while_while_cond_1769097___redundant_placeholder15
1while_while_cond_1769097___redundant_placeholder25
1while_while_cond_1769097___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
Ве
Ч
while_body_1769098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2!
while/lstm_cell_3/dropout/ConstЧ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ЉрЕ28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&while/lstm_cell_3/dropout/GreaterEqualЕ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2 
while/lstm_cell_3/dropout/CastТ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_1/ConstЭ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ШўЦ2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_1/GreaterEqualЛ
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_1/CastЪ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_2/ConstЭ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Иѓ}2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_2/GreaterEqualЛ
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_2/CastЪ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_3/ConstЭ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Ип&2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_3/GreaterEqualЛ
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_3/CastЪ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_3/Mul_1t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ё
while/lstm_cell_3/mulMulwhile_placeholder_2#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulЇ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1Ї
while/lstm_cell_3/mul_2Mulwhile_placeholder_2%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2Ї
while/lstm_cell_3/mul_3Mulwhile_placeholder_2%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 


(__inference_lstm_3_layer_call_fn_1768922
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17664462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
зD
л
C__inference_lstm_3_layer_call_and_return_conditional_losses_1766446

inputs
lstm_cell_3_1766364
lstm_cell_3_1766366
lstm_cell_3_1766368
identityЂ#lstm_cell_3/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_1766364lstm_cell_3_1766366lstm_cell_3_1766368*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17659852%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_1766364lstm_cell_3_1766366lstm_cell_3_1766368*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1766377*
condR
while_cond_1766376*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ШU
Н
 __inference__traced_save_1770069
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameъ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ќ
valueђBя)B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_3_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_m_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop;savev2_adam_lstm_3_lstm_cell_3_kernel_v_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_3_lstm_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*О
_input_shapesЌ
Љ: :@@:@:@ : : :::: : : : : :	:	@:: : :@@:@:@ : : ::::	:	@::@@:@:@ : : ::::	:	@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::$ 

_output_shapes

:@@: 

_output_shapes
:@:$  

_output_shapes

:@ : !

_output_shapes
: :$" 

_output_shapes

: : #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::%&!

_output_shapes
:	:%'!

_output_shapes
:	@:!(

_output_shapes	
::)

_output_shapes
: 
зD
л
C__inference_lstm_3_layer_call_and_return_conditional_losses_1766578

inputs
lstm_cell_3_1766496
lstm_cell_3_1766498
lstm_cell_3_1766500
identityЂ#lstm_cell_3/StatefulPartitionedCallЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_1766496lstm_cell_3_1766498lstm_cell_3_1766500*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17660832%
#lstm_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЅ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_1766496lstm_cell_3_1766498lstm_cell_3_1766500*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1766509*
condR
while_cond_1766508*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_3/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы

I__inference_sequential_3_layer_call_and_return_conditional_losses_1767481

inputs
lstm_3_1767453
lstm_3_1767455
lstm_3_1767457
dense_15_1767460
dense_15_1767462
dense_14_1767465
dense_14_1767467
dense_13_1767470
dense_13_1767472
dense_12_1767475
dense_12_1767477
identityЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ dense_14/StatefulPartitionedCallЂ dense_15/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_1767453lstm_3_1767455lstm_3_1767457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17672202 
lstm_3/StatefulPartitionedCallИ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_15_1767460dense_15_1767462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_17672612"
 dense_15/StatefulPartitionedCallК
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_14_1767465dense_14_1767467*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_17672882"
 dense_14/StatefulPartitionedCallК
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_13_1767470dense_13_1767472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_17673152"
 dense_13/StatefulPartitionedCallК
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_12_1767475dense_12_1767477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_17673412"
 dense_12/StatefulPartitionedCallЊ
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
А
Ш
while_cond_1769412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1769412___redundant_placeholder05
1while_while_cond_1769412___redundant_placeholder15
1while_while_cond_1769412___redundant_placeholder25
1while_while_cond_1769412___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
Ъ­
Е
C__inference_lstm_3_layer_call_and_return_conditional_losses_1767220

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_likeh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1767070*
condR
while_cond_1767069*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о

*__inference_dense_13_layer_call_fn_1769645

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_17673152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ок
Е
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769280

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout/ConstЏ
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shapeѕ
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2љХР22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2$
"lstm_cell_3/dropout/GreaterEqual/yю
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_cell_3/dropout/GreaterEqualЃ
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/CastЊ
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_1/ConstЕ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeћ
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ќч24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yі
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_1/GreaterEqualЉ
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/CastВ
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_2/ConstЕ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeћ
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2дШ24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yі
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_2/GreaterEqualЉ
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/CastВ
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_3/ConstЕ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeћ
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2­аО24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yі
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_3/GreaterEqualЉ
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/CastВ
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul_1h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1769098*
condR
while_cond_1769097*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
љ
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767917

inputs4
0lstm_3_lstm_cell_3_split_readvariableop_resource6
2lstm_3_lstm_cell_3_split_1_readvariableop_resource.
*lstm_3_lstm_cell_3_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identityЂdense_12/BiasAdd/ReadVariableOpЂdense_12/MatMul/ReadVariableOpЂdense_13/BiasAdd/ReadVariableOpЂdense_13/MatMul/ReadVariableOpЂdense_14/BiasAdd/ReadVariableOpЂdense_14/MatMul/ReadVariableOpЂdense_15/BiasAdd/ReadVariableOpЂdense_15/MatMul/ReadVariableOpЂ!lstm_3/lstm_cell_3/ReadVariableOpЂ#lstm_3/lstm_cell_3/ReadVariableOp_1Ђ#lstm_3/lstm_cell_3/ReadVariableOp_2Ђ#lstm_3/lstm_cell_3/ReadVariableOp_3Ђ'lstm_3/lstm_cell_3/split/ReadVariableOpЂ)lstm_3/lstm_cell_3/split_1/ReadVariableOpЂlstm_3/whileR
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros_1/packed/1Ѕ
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_3/TensorArrayV2/element_shapeЮ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Э
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2І
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_2
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/Constа
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/ones_like
 lstm_3/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2"
 lstm_3/lstm_cell_3/dropout/ConstЫ
lstm_3/lstm_cell_3/dropout/MulMul%lstm_3/lstm_cell_3/ones_like:output:0)lstm_3/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/lstm_cell_3/dropout/Mul
 lstm_3/lstm_cell_3/dropout/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_3/lstm_cell_3/dropout/Shape
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform)lstm_3/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2бы29
7lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform
)lstm_3/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2+
)lstm_3/lstm_cell_3/dropout/GreaterEqual/y
'lstm_3/lstm_cell_3/dropout/GreaterEqualGreaterEqual@lstm_3/lstm_cell_3/dropout/random_uniform/RandomUniform:output:02lstm_3/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'lstm_3/lstm_cell_3/dropout/GreaterEqualИ
lstm_3/lstm_cell_3/dropout/CastCast+lstm_3/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2!
lstm_3/lstm_cell_3/dropout/CastЦ
 lstm_3/lstm_cell_3/dropout/Mul_1Mul"lstm_3/lstm_cell_3/dropout/Mul:z:0#lstm_3/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/dropout/Mul_1
"lstm_3/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2$
"lstm_3/lstm_cell_3/dropout_1/Constб
 lstm_3/lstm_cell_3/dropout_1/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/dropout_1/Mul
"lstm_3/lstm_cell_3/dropout_1/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_1/Shape
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2иp2;
9lstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2-
+lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)lstm_3/lstm_cell_3/dropout_1/GreaterEqualО
!lstm_3/lstm_cell_3/dropout_1/CastCast-lstm_3/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/lstm_cell_3/dropout_1/CastЮ
"lstm_3/lstm_cell_3/dropout_1/Mul_1Mul$lstm_3/lstm_cell_3/dropout_1/Mul:z:0%lstm_3/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/dropout_1/Mul_1
"lstm_3/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2$
"lstm_3/lstm_cell_3/dropout_2/Constб
 lstm_3/lstm_cell_3/dropout_2/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/dropout_2/Mul
"lstm_3/lstm_cell_3/dropout_2/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_2/Shape
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ѓ2;
9lstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2-
+lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)lstm_3/lstm_cell_3/dropout_2/GreaterEqualО
!lstm_3/lstm_cell_3/dropout_2/CastCast-lstm_3/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/lstm_cell_3/dropout_2/CastЮ
"lstm_3/lstm_cell_3/dropout_2/Mul_1Mul$lstm_3/lstm_cell_3/dropout_2/Mul:z:0%lstm_3/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/dropout_2/Mul_1
"lstm_3/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2$
"lstm_3/lstm_cell_3/dropout_3/Constб
 lstm_3/lstm_cell_3/dropout_3/MulMul%lstm_3/lstm_cell_3/ones_like:output:0+lstm_3/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/dropout_3/Mul
"lstm_3/lstm_cell_3/dropout_3/ShapeShape%lstm_3/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/dropout_3/Shape
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_3/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ЧгЛ2;
9lstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2-
+lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y
)lstm_3/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualBlstm_3/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:04lstm_3/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)lstm_3/lstm_cell_3/dropout_3/GreaterEqualО
!lstm_3/lstm_cell_3/dropout_3/CastCast-lstm_3/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/lstm_cell_3/dropout_3/CastЮ
"lstm_3/lstm_cell_3/dropout_3/Mul_1Mul$lstm_3/lstm_cell_3/dropout_3/Mul:z:0%lstm_3/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/dropout_3/Mul_1v
lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimФ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOpѓ
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_3/lstm_cell_3/splitЖ
lstm_3/lstm_cell_3/MatMulMatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMulК
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_1К
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_2К
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_3z
lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const_1
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimЦ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpы
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_3/lstm_cell_3/split_1П
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAddХ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_1Х
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_2Х
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_3І
lstm_3/lstm_cell_3/mulMullstm_3/zeros:output:0$lstm_3/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mulЌ
lstm_3/lstm_cell_3/mul_1Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_1Ќ
lstm_3/lstm_cell_3/mul_2Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_2Ќ
lstm_3/lstm_cell_3/mul_3Mullstm_3/zeros:output:0&lstm_3/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_3В
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOpЁ
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stackЅ
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_3/lstm_cell_3/strided_slice/stack_1Ѕ
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2ю
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_sliceН
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_4З
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add}
lstm_3/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_2}
lstm_3/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_3Ў
lstm_3/lstm_cell_3/Mul_4Mullstm_3/lstm_cell_3/add:z:0#lstm_3/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_4А
lstm_3/lstm_cell_3/Add_1Addlstm_3/lstm_cell_3/Mul_4:z:0#lstm_3/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_1
*lstm_3/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/lstm_cell_3/clip_by_value/Minimum/yф
(lstm_3/lstm_cell_3/clip_by_value/MinimumMinimumlstm_3/lstm_cell_3/Add_1:z:03lstm_3/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/lstm_cell_3/clip_by_value/Minimum
"lstm_3/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"lstm_3/lstm_cell_3/clip_by_value/yм
 lstm_3/lstm_cell_3/clip_by_valueMaximum,lstm_3/lstm_cell_3/clip_by_value/Minimum:z:0+lstm_3/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/clip_by_valueЖ
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1Ѕ
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_3/lstm_cell_3/strided_slice_1/stackЉ
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1С
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_1:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_5Н
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_2}
lstm_3/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_4}
lstm_3/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_5А
lstm_3/lstm_cell_3/Mul_5Mullstm_3/lstm_cell_3/add_2:z:0#lstm_3/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_5А
lstm_3/lstm_cell_3/Add_3Addlstm_3/lstm_cell_3/Mul_5:z:0#lstm_3/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_3Ё
,lstm_3/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_3/lstm_cell_3/clip_by_value_1/Minimum/yъ
*lstm_3/lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_3/lstm_cell_3/Add_3:z:05lstm_3/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2,
*lstm_3/lstm_cell_3/clip_by_value_1/Minimum
$lstm_3/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_3/lstm_cell_3/clip_by_value_1/yф
"lstm_3/lstm_cell_3/clip_by_value_1Maximum.lstm_3/lstm_cell_3/clip_by_value_1/Minimum:z:0-lstm_3/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/clip_by_value_1Ў
lstm_3/lstm_cell_3/mul_6Mul&lstm_3/lstm_cell_3/clip_by_value_1:z:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_6Ж
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2Ѕ
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/lstm_cell_3/strided_slice_2/stackЉ
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2С
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_2:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_6Н
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/TanhА
lstm_3/lstm_cell_3/mul_7Mul$lstm_3/lstm_cell_3/clip_by_value:z:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_7Ћ
lstm_3/lstm_cell_3/add_5AddV2lstm_3/lstm_cell_3/mul_6:z:0lstm_3/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_5Ж
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3Ѕ
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2*
(lstm_3/lstm_cell_3/strided_slice_3/stackЉ
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3С
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_3:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_7Н
lstm_3/lstm_cell_3/add_6AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_6}
lstm_3/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_6}
lstm_3/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_7А
lstm_3/lstm_cell_3/Mul_8Mullstm_3/lstm_cell_3/add_6:z:0#lstm_3/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_8А
lstm_3/lstm_cell_3/Add_7Addlstm_3/lstm_cell_3/Mul_8:z:0#lstm_3/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_7Ё
,lstm_3/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_3/lstm_cell_3/clip_by_value_2/Minimum/yъ
*lstm_3/lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_3/lstm_cell_3/Add_7:z:05lstm_3/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2,
*lstm_3/lstm_cell_3/clip_by_value_2/Minimum
$lstm_3/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_3/lstm_cell_3/clip_by_value_2/yф
"lstm_3/lstm_cell_3/clip_by_value_2Maximum.lstm_3/lstm_cell_3/clip_by_value_2/Minimum:z:0-lstm_3/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/clip_by_value_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Tanh_1Д
lstm_3/lstm_cell_3/mul_9Mul&lstm_3/lstm_cell_3/clip_by_value_2:z:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_9
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2&
$lstm_3/TensorArrayV2_1/element_shapeд
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterЬ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_3_while_body_1767708*%
condR
lstm_3_while_cond_1767707*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
lstm_3/whileУ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ф
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permС
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimeЈ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_15/MatMul/ReadVariableOpЇ
dense_15/MatMulMatMullstm_3/strided_slice_3:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/MatMulЇ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_15/BiasAdd/ReadVariableOpЅ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/BiasAdds
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/ReluЈ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_14/MatMul/ReadVariableOpЃ
dense_14/MatMulMatMuldense_15/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/MatMulЇ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_14/BiasAdd/ReadVariableOpЅ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/ReluЈ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOpЃ
dense_13/MatMulMatMuldense_14/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/MatMulЇ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЅ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/BiasAdds
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/ReluЈ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_12/MatMul/ReadVariableOpЃ
dense_12/MatMulMatMuldense_13/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_12/MatMulЇ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOpЅ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_12/BiasAddє
IdentityIdentitydense_12/BiasAdd:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я	
о
E__inference_dense_13_layer_call_and_return_conditional_losses_1767315

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ы

I__inference_sequential_3_layer_call_and_return_conditional_losses_1767423

inputs
lstm_3_1767395
lstm_3_1767397
lstm_3_1767399
dense_15_1767402
dense_15_1767404
dense_14_1767407
dense_14_1767409
dense_13_1767412
dense_13_1767414
dense_12_1767417
dense_12_1767419
identityЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ dense_14/StatefulPartitionedCallЂ dense_15/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCall
lstm_3/StatefulPartitionedCallStatefulPartitionedCallinputslstm_3_1767395lstm_3_1767397lstm_3_1767399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17669372 
lstm_3/StatefulPartitionedCallИ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_15_1767402dense_15_1767404*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_17672612"
 dense_15/StatefulPartitionedCallК
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_14_1767407dense_14_1767409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_17672882"
 dense_14/StatefulPartitionedCallК
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_13_1767412dense_13_1767414*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_17673152"
 dense_13/StatefulPartitionedCallК
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_12_1767417dense_12_1767419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_17673412"
 dense_12/StatefulPartitionedCallЊ
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ъ­
Е
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769563

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_likeh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1769413*
condR
while_cond_1769412*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	

.__inference_sequential_3_layer_call_fn_1768281

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_17674812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§

I__inference_sequential_3_layer_call_and_return_conditional_losses_1767358
lstm_3_input
lstm_3_1767243
lstm_3_1767245
lstm_3_1767247
dense_15_1767272
dense_15_1767274
dense_14_1767299
dense_14_1767301
dense_13_1767326
dense_13_1767328
dense_12_1767352
dense_12_1767354
identityЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ dense_14/StatefulPartitionedCallЂ dense_15/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЅ
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_1767243lstm_3_1767245lstm_3_1767247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17669372 
lstm_3/StatefulPartitionedCallИ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_15_1767272dense_15_1767274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_17672612"
 dense_15/StatefulPartitionedCallК
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_14_1767299dense_14_1767301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_17672882"
 dense_14/StatefulPartitionedCallК
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_13_1767326dense_13_1767328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_17673152"
 dense_13/StatefulPartitionedCallК
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_12_1767352dense_12_1767354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_17673412"
 dense_12/StatefulPartitionedCallЊ
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input
А
Ш
while_cond_1766754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1766754___redundant_placeholder05
1while_while_cond_1766754___redundant_placeholder15
1while_while_cond_1766754___redundant_placeholder25
1while_while_cond_1766754___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
А
Ш
while_cond_1766376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1766376___redundant_placeholder05
1while_while_cond_1766376___redundant_placeholder15
1while_while_cond_1766376___redundant_placeholder25
1while_while_cond_1766376___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
мк
Е
C__inference_lstm_3_layer_call_and_return_conditional_losses_1766937

inputs-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout/ConstЏ
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shapeѕ
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ІпД22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2$
"lstm_cell_3/dropout/GreaterEqual/yю
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_cell_3/dropout/GreaterEqualЃ
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/CastЊ
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_1/ConstЕ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeњ
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2УщN24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yі
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_1/GreaterEqualЉ
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/CastВ
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_2/ConstЕ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeћ
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2чеЄ24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yі
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_2/GreaterEqualЉ
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/CastВ
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_3/ConstЕ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeњ
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Й24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yі
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_3/GreaterEqualЉ
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/CastВ
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul_1h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1766755*
condR
while_cond_1766754*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
Њ
"__inference__wrapped_model_1765815
lstm_3_inputA
=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resourceC
?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource;
7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource8
4sequential_3_dense_15_matmul_readvariableop_resource9
5sequential_3_dense_15_biasadd_readvariableop_resource8
4sequential_3_dense_14_matmul_readvariableop_resource9
5sequential_3_dense_14_biasadd_readvariableop_resource8
4sequential_3_dense_13_matmul_readvariableop_resource9
5sequential_3_dense_13_biasadd_readvariableop_resource8
4sequential_3_dense_12_matmul_readvariableop_resource9
5sequential_3_dense_12_biasadd_readvariableop_resource
identityЂ,sequential_3/dense_12/BiasAdd/ReadVariableOpЂ+sequential_3/dense_12/MatMul/ReadVariableOpЂ,sequential_3/dense_13/BiasAdd/ReadVariableOpЂ+sequential_3/dense_13/MatMul/ReadVariableOpЂ,sequential_3/dense_14/BiasAdd/ReadVariableOpЂ+sequential_3/dense_14/MatMul/ReadVariableOpЂ,sequential_3/dense_15/BiasAdd/ReadVariableOpЂ+sequential_3/dense_15/MatMul/ReadVariableOpЂ.sequential_3/lstm_3/lstm_cell_3/ReadVariableOpЂ0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1Ђ0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2Ђ0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3Ђ4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOpЂ6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOpЂsequential_3/lstm_3/whiler
sequential_3/lstm_3/ShapeShapelstm_3_input*
T0*
_output_shapes
:2
sequential_3/lstm_3/Shape
'sequential_3/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_3/strided_slice/stack 
)sequential_3/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_1 
)sequential_3/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_3/strided_slice/stack_2к
!sequential_3/lstm_3/strided_sliceStridedSlice"sequential_3/lstm_3/Shape:output:00sequential_3/lstm_3/strided_slice/stack:output:02sequential_3/lstm_3/strided_slice/stack_1:output:02sequential_3/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_3/strided_slice
sequential_3/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_3/lstm_3/zeros/mul/yМ
sequential_3/lstm_3/zeros/mulMul*sequential_3/lstm_3/strided_slice:output:0(sequential_3/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/zeros/mul
 sequential_3/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_3/lstm_3/zeros/Less/yЗ
sequential_3/lstm_3/zeros/LessLess!sequential_3/lstm_3/zeros/mul:z:0)sequential_3/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_3/zeros/Less
"sequential_3/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_3/lstm_3/zeros/packed/1г
 sequential_3/lstm_3/zeros/packedPack*sequential_3/lstm_3/strided_slice:output:0+sequential_3/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_3/zeros/packed
sequential_3/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_3/zeros/ConstХ
sequential_3/lstm_3/zerosFill)sequential_3/lstm_3/zeros/packed:output:0(sequential_3/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_3/lstm_3/zeros
!sequential_3/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_3/lstm_3/zeros_1/mul/yТ
sequential_3/lstm_3/zeros_1/mulMul*sequential_3/lstm_3/strided_slice:output:0*sequential_3/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/zeros_1/mul
"sequential_3/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_3/lstm_3/zeros_1/Less/yП
 sequential_3/lstm_3/zeros_1/LessLess#sequential_3/lstm_3/zeros_1/mul:z:0+sequential_3/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_3/zeros_1/Less
$sequential_3/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_3/lstm_3/zeros_1/packed/1й
"sequential_3/lstm_3/zeros_1/packedPack*sequential_3/lstm_3/strided_slice:output:0-sequential_3/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_3/zeros_1/packed
!sequential_3/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_3/zeros_1/ConstЭ
sequential_3/lstm_3/zeros_1Fill+sequential_3/lstm_3/zeros_1/packed:output:0*sequential_3/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_3/lstm_3/zeros_1
"sequential_3/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_3/transpose/permМ
sequential_3/lstm_3/transpose	Transposelstm_3_input+sequential_3/lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
sequential_3/lstm_3/transpose
sequential_3/lstm_3/Shape_1Shape!sequential_3/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_3/Shape_1 
)sequential_3/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_1/stackЄ
+sequential_3/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_1Є
+sequential_3/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_1/stack_2ц
#sequential_3/lstm_3/strided_slice_1StridedSlice$sequential_3/lstm_3/Shape_1:output:02sequential_3/lstm_3/strided_slice_1/stack:output:04sequential_3/lstm_3/strided_slice_1/stack_1:output:04sequential_3/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_1­
/sequential_3/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ21
/sequential_3/lstm_3/TensorArrayV2/element_shape
!sequential_3/lstm_3/TensorArrayV2TensorListReserve8sequential_3/lstm_3/TensorArrayV2/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_3/TensorArrayV2ч
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2K
Isequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeШ
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_3/transpose:y:0Rsequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor 
)sequential_3/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_3/strided_slice_2/stackЄ
+sequential_3/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_1Є
+sequential_3/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_2/stack_2є
#sequential_3/lstm_3/strided_slice_2StridedSlice!sequential_3/lstm_3/transpose:y:02sequential_3/lstm_3/strided_slice_2/stack:output:04sequential_3/lstm_3/strided_slice_2/stack_1:output:04sequential_3/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_2Д
/sequential_3/lstm_3/lstm_cell_3/ones_like/ShapeShape"sequential_3/lstm_3/zeros:output:0*
T0*
_output_shapes
:21
/sequential_3/lstm_3/lstm_cell_3/ones_like/ShapeЇ
/sequential_3/lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_3/lstm_3/lstm_cell_3/ones_like/Const
)sequential_3/lstm_3/lstm_cell_3/ones_likeFill8sequential_3/lstm_3/lstm_cell_3/ones_like/Shape:output:08sequential_3/lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/lstm_cell_3/ones_like
%sequential_3/lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_3/lstm_3/lstm_cell_3/ConstЄ
/sequential_3/lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_3/lstm_3/lstm_cell_3/split/split_dimы
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype026
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOpЇ
%sequential_3/lstm_3/lstm_cell_3/splitSplit8sequential_3/lstm_3/lstm_cell_3/split/split_dim:output:0<sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2'
%sequential_3/lstm_3/lstm_cell_3/splitъ
&sequential_3/lstm_3/lstm_cell_3/MatMulMatMul,sequential_3/lstm_3/strided_slice_2:output:0.sequential_3/lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&sequential_3/lstm_3/lstm_cell_3/MatMulю
(sequential_3/lstm_3/lstm_cell_3/MatMul_1MatMul,sequential_3/lstm_3/strided_slice_2:output:0.sequential_3/lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_1ю
(sequential_3/lstm_3/lstm_cell_3/MatMul_2MatMul,sequential_3/lstm_3/strided_slice_2:output:0.sequential_3/lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_2ю
(sequential_3/lstm_3/lstm_cell_3/MatMul_3MatMul,sequential_3/lstm_3/strided_slice_2:output:0.sequential_3/lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_3
'sequential_3/lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_3/lstm_3/lstm_cell_3/Const_1Ј
1sequential_3/lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_3/lstm_3/lstm_cell_3/split_1/split_dimэ
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp
'sequential_3/lstm_3/lstm_cell_3/split_1Split:sequential_3/lstm_3/lstm_cell_3/split_1/split_dim:output:0>sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2)
'sequential_3/lstm_3/lstm_cell_3/split_1ѓ
'sequential_3/lstm_3/lstm_cell_3/BiasAddBiasAdd0sequential_3/lstm_3/lstm_cell_3/MatMul:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'sequential_3/lstm_3/lstm_cell_3/BiasAddљ
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_1BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_1:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_1љ
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_2BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_2:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_2љ
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_3BiasAdd2sequential_3/lstm_3/lstm_cell_3/MatMul_3:product:00sequential_3/lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/lstm_cell_3/BiasAdd_3л
#sequential_3/lstm_3/lstm_cell_3/mulMul"sequential_3/lstm_3/zeros:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#sequential_3/lstm_3/lstm_cell_3/mulп
%sequential_3/lstm_3/lstm_cell_3/mul_1Mul"sequential_3/lstm_3/zeros:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_1п
%sequential_3/lstm_3/lstm_cell_3/mul_2Mul"sequential_3/lstm_3/zeros:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_2п
%sequential_3/lstm_3/lstm_cell_3/mul_3Mul"sequential_3/lstm_3/zeros:output:02sequential_3/lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_3й
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype020
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOpЛ
3sequential_3/lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_3/lstm_3/lstm_cell_3/strided_slice/stackП
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1П
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2М
-sequential_3/lstm_3/lstm_cell_3/strided_sliceStridedSlice6sequential_3/lstm_3/lstm_cell_3/ReadVariableOp:value:0<sequential_3/lstm_3/lstm_cell_3/strided_slice/stack:output:0>sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_1:output:0>sequential_3/lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2/
-sequential_3/lstm_3/lstm_cell_3/strided_sliceё
(sequential_3/lstm_3/lstm_cell_3/MatMul_4MatMul'sequential_3/lstm_3/lstm_cell_3/mul:z:06sequential_3/lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_4ы
#sequential_3/lstm_3/lstm_cell_3/addAddV20sequential_3/lstm_3/lstm_cell_3/BiasAdd:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#sequential_3/lstm_3/lstm_cell_3/add
'sequential_3/lstm_3/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2)
'sequential_3/lstm_3/lstm_cell_3/Const_2
'sequential_3/lstm_3/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_3/lstm_3/lstm_cell_3/Const_3т
%sequential_3/lstm_3/lstm_cell_3/Mul_4Mul'sequential_3/lstm_3/lstm_cell_3/add:z:00sequential_3/lstm_3/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Mul_4ф
%sequential_3/lstm_3/lstm_cell_3/Add_1Add)sequential_3/lstm_3/lstm_cell_3/Mul_4:z:00sequential_3/lstm_3/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Add_1З
7sequential_3/lstm_3/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_3/lstm_3/lstm_cell_3/clip_by_value/Minimum/y
5sequential_3/lstm_3/lstm_cell_3/clip_by_value/MinimumMinimum)sequential_3/lstm_3/lstm_cell_3/Add_1:z:0@sequential_3/lstm_3/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@27
5sequential_3/lstm_3/lstm_cell_3/clip_by_value/MinimumЇ
/sequential_3/lstm_3/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_3/lstm_3/lstm_cell_3/clip_by_value/y
-sequential_3/lstm_3/lstm_cell_3/clip_by_valueMaximum9sequential_3/lstm_3/lstm_cell_3/clip_by_value/Minimum:z:08sequential_3/lstm_3/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2/
-sequential_3/lstm_3/lstm_cell_3/clip_by_valueн
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1П
5sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stackУ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1У
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2Ш
/sequential_3/lstm_3/lstm_cell_3/strided_slice_1StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_1:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_1ѕ
(sequential_3/lstm_3/lstm_cell_3/MatMul_5MatMul)sequential_3/lstm_3/lstm_cell_3/mul_1:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_5ё
%sequential_3/lstm_3/lstm_cell_3/add_2AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_1:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/add_2
'sequential_3/lstm_3/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2)
'sequential_3/lstm_3/lstm_cell_3/Const_4
'sequential_3/lstm_3/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_3/lstm_3/lstm_cell_3/Const_5ф
%sequential_3/lstm_3/lstm_cell_3/Mul_5Mul)sequential_3/lstm_3/lstm_cell_3/add_2:z:00sequential_3/lstm_3/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Mul_5ф
%sequential_3/lstm_3/lstm_cell_3/Add_3Add)sequential_3/lstm_3/lstm_cell_3/Mul_5:z:00sequential_3/lstm_3/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Add_3Л
9sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/Minimum/y
7sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/MinimumMinimum)sequential_3/lstm_3/lstm_cell_3/Add_3:z:0Bsequential_3/lstm_3/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@29
7sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/MinimumЋ
1sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/y
/sequential_3/lstm_3/lstm_cell_3/clip_by_value_1Maximum;sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/Minimum:z:0:sequential_3/lstm_3/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/lstm_cell_3/clip_by_value_1т
%sequential_3/lstm_3/lstm_cell_3/mul_6Mul3sequential_3/lstm_3/lstm_cell_3/clip_by_value_1:z:0$sequential_3/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_6н
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2П
5sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stackУ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1У
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2Ш
/sequential_3/lstm_3/lstm_cell_3/strided_slice_2StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_2:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_2ѕ
(sequential_3/lstm_3/lstm_cell_3/MatMul_6MatMul)sequential_3/lstm_3/lstm_cell_3/mul_2:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_6ё
%sequential_3/lstm_3/lstm_cell_3/add_4AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_2:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/add_4Б
$sequential_3/lstm_3/lstm_cell_3/TanhTanh)sequential_3/lstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2&
$sequential_3/lstm_3/lstm_cell_3/Tanhф
%sequential_3/lstm_3/lstm_cell_3/mul_7Mul1sequential_3/lstm_3/lstm_cell_3/clip_by_value:z:0(sequential_3/lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_7п
%sequential_3/lstm_3/lstm_cell_3/add_5AddV2)sequential_3/lstm_3/lstm_cell_3/mul_6:z:0)sequential_3/lstm_3/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/add_5н
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype022
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3П
5sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   27
5sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stackУ
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1У
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2Ш
/sequential_3/lstm_3/lstm_cell_3/strided_slice_3StridedSlice8sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_3:value:0>sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:0@sequential_3/lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential_3/lstm_3/lstm_cell_3/strided_slice_3ѕ
(sequential_3/lstm_3/lstm_cell_3/MatMul_7MatMul)sequential_3/lstm_3/lstm_cell_3/mul_3:z:08sequential_3/lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(sequential_3/lstm_3/lstm_cell_3/MatMul_7ё
%sequential_3/lstm_3/lstm_cell_3/add_6AddV22sequential_3/lstm_3/lstm_cell_3/BiasAdd_3:output:02sequential_3/lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/add_6
'sequential_3/lstm_3/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2)
'sequential_3/lstm_3/lstm_cell_3/Const_6
'sequential_3/lstm_3/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_3/lstm_3/lstm_cell_3/Const_7ф
%sequential_3/lstm_3/lstm_cell_3/Mul_8Mul)sequential_3/lstm_3/lstm_cell_3/add_6:z:00sequential_3/lstm_3/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Mul_8ф
%sequential_3/lstm_3/lstm_cell_3/Add_7Add)sequential_3/lstm_3/lstm_cell_3/Mul_8:z:00sequential_3/lstm_3/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/Add_7Л
9sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/Minimum/y
7sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/MinimumMinimum)sequential_3/lstm_3/lstm_cell_3/Add_7:z:0Bsequential_3/lstm_3/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@29
7sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/MinimumЋ
1sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/y
/sequential_3/lstm_3/lstm_cell_3/clip_by_value_2Maximum;sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/Minimum:z:0:sequential_3/lstm_3/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/lstm_cell_3/clip_by_value_2Е
&sequential_3/lstm_3/lstm_cell_3/Tanh_1Tanh)sequential_3/lstm_3/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&sequential_3/lstm_3/lstm_cell_3/Tanh_1ш
%sequential_3/lstm_3/lstm_cell_3/mul_9Mul3sequential_3/lstm_3/lstm_cell_3/clip_by_value_2:z:0*sequential_3/lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2'
%sequential_3/lstm_3/lstm_cell_3/mul_9З
1sequential_3/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   23
1sequential_3/lstm_3/TensorArrayV2_1/element_shape
#sequential_3/lstm_3/TensorArrayV2_1TensorListReserve:sequential_3/lstm_3/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_3/TensorArrayV2_1v
sequential_3/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_3/timeЇ
,sequential_3/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2.
,sequential_3/lstm_3/while/maximum_iterations
&sequential_3/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_3/while/loop_counter
sequential_3/lstm_3/whileWhile/sequential_3/lstm_3/while/loop_counter:output:05sequential_3/lstm_3/while/maximum_iterations:output:0!sequential_3/lstm_3/time:output:0,sequential_3/lstm_3/TensorArrayV2_1:handle:0"sequential_3/lstm_3/zeros:output:0$sequential_3/lstm_3/zeros_1:output:0,sequential_3/lstm_3/strided_slice_1:output:0Ksequential_3/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_3_lstm_3_lstm_cell_3_split_readvariableop_resource?sequential_3_lstm_3_lstm_cell_3_split_1_readvariableop_resource7sequential_3_lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_3_lstm_3_while_body_1765638*2
cond*R(
&sequential_3_lstm_3_while_cond_1765637*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
sequential_3/lstm_3/whileн
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2F
Dsequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeИ
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_3/while:output:3Msequential_3/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype028
6sequential_3/lstm_3/TensorArrayV2Stack/TensorListStackЉ
)sequential_3/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2+
)sequential_3/lstm_3/strided_slice_3/stackЄ
+sequential_3/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_3/strided_slice_3/stack_1Є
+sequential_3/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_3/strided_slice_3/stack_2
#sequential_3/lstm_3/strided_slice_3StridedSlice?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_3/strided_slice_3/stack:output:04sequential_3/lstm_3/strided_slice_3/stack_1:output:04sequential_3/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2%
#sequential_3/lstm_3/strided_slice_3Ё
$sequential_3/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_3/transpose_1/permѕ
sequential_3/lstm_3/transpose_1	Transpose?sequential_3/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2!
sequential_3/lstm_3/transpose_1
sequential_3/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_3/runtimeЯ
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02-
+sequential_3/dense_15/MatMul/ReadVariableOpл
sequential_3/dense_15/MatMulMatMul,sequential_3/lstm_3/strided_slice_3:output:03sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_3/dense_15/MatMulЮ
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_3/dense_15/BiasAdd/ReadVariableOpй
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_3/dense_15/BiasAdd
sequential_3/dense_15/ReluRelu&sequential_3/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
sequential_3/dense_15/ReluЯ
+sequential_3/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_14_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02-
+sequential_3/dense_14/MatMul/ReadVariableOpз
sequential_3/dense_14/MatMulMatMul(sequential_3/dense_15/Relu:activations:03sequential_3/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
sequential_3/dense_14/MatMulЮ
,sequential_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/dense_14/BiasAdd/ReadVariableOpй
sequential_3/dense_14/BiasAddBiasAdd&sequential_3/dense_14/MatMul:product:04sequential_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
sequential_3/dense_14/BiasAdd
sequential_3/dense_14/ReluRelu&sequential_3/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
sequential_3/dense_14/ReluЯ
+sequential_3/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_3/dense_13/MatMul/ReadVariableOpз
sequential_3/dense_13/MatMulMatMul(sequential_3/dense_14/Relu:activations:03sequential_3/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_3/dense_13/MatMulЮ
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/dense_13/BiasAdd/ReadVariableOpй
sequential_3/dense_13/BiasAddBiasAdd&sequential_3/dense_13/MatMul:product:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_3/dense_13/BiasAdd
sequential_3/dense_13/ReluRelu&sequential_3/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_3/dense_13/ReluЯ
+sequential_3/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_3/dense_12/MatMul/ReadVariableOpз
sequential_3/dense_12/MatMulMatMul(sequential_3/dense_13/Relu:activations:03sequential_3/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_3/dense_12/MatMulЮ
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_3/dense_12/BiasAdd/ReadVariableOpй
sequential_3/dense_12/BiasAddBiasAdd&sequential_3/dense_12/MatMul:product:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_3/dense_12/BiasAddФ
IdentityIdentity&sequential_3/dense_12/BiasAdd:output:0-^sequential_3/dense_12/BiasAdd/ReadVariableOp,^sequential_3/dense_12/MatMul/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp,^sequential_3/dense_13/MatMul/ReadVariableOp-^sequential_3/dense_14/BiasAdd/ReadVariableOp,^sequential_3/dense_14/MatMul/ReadVariableOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp/^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp1^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_11^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_21^sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_35^sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp7^sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp^sequential_3/lstm_3/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_12/MatMul/ReadVariableOp+sequential_3/dense_12/MatMul/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_13/MatMul/ReadVariableOp+sequential_3/dense_13/MatMul/ReadVariableOp2\
,sequential_3/dense_14/BiasAdd/ReadVariableOp,sequential_3/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_14/MatMul/ReadVariableOp+sequential_3/dense_14/MatMul/ReadVariableOp2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp2`
.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp.sequential_3/lstm_3/lstm_cell_3/ReadVariableOp2d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_10sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_12d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_20sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_22d
0sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_30sequential_3/lstm_3/lstm_cell_3/ReadVariableOp_32l
4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp4sequential_3/lstm_3/lstm_cell_3/split/ReadVariableOp2p
6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp6sequential_3/lstm_3/lstm_cell_3/split_1/ReadVariableOp26
sequential_3/lstm_3/whilesequential_3/lstm_3/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input


д
lstm_3_while_cond_1768049*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1C
?lstm_3_while_lstm_3_while_cond_1768049___redundant_placeholder0C
?lstm_3_while_lstm_3_while_cond_1768049___redundant_placeholder1C
?lstm_3_while_lstm_3_while_cond_1768049___redundant_placeholder2C
?lstm_3_while_lstm_3_while_cond_1768049___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
	
о
E__inference_dense_12_layer_call_and_return_conditional_losses_1769655

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
х

&sequential_3_lstm_3_while_body_1765638D
@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counterJ
Fsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations)
%sequential_3_lstm_3_while_placeholder+
'sequential_3_lstm_3_while_placeholder_1+
'sequential_3_lstm_3_while_placeholder_2+
'sequential_3_lstm_3_while_placeholder_3C
?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0
{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0K
Gsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0C
?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0&
"sequential_3_lstm_3_while_identity(
$sequential_3_lstm_3_while_identity_1(
$sequential_3_lstm_3_while_identity_2(
$sequential_3_lstm_3_while_identity_3(
$sequential_3_lstm_3_while_identity_4(
$sequential_3_lstm_3_while_identity_5A
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1}
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensorG
Csequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resourceI
Esequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resourceA
=sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resourceЂ4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOpЂ6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1Ђ6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2Ђ6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3Ђ:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOpЂ<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpы
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2M
Ksequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeЫ
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_3_while_placeholderTsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02?
=sequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItemХ
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/ShapeShape'sequential_3_lstm_3_while_placeholder_2*
T0*
_output_shapes
:27
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/ShapeГ
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_3/lstm_3/while/lstm_cell_3/ones_like/Const
/sequential_3/lstm_3/while/lstm_cell_3/ones_likeFill>sequential_3/lstm_3/while/lstm_cell_3/ones_like/Shape:output:0>sequential_3/lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/while/lstm_cell_3/ones_like
+sequential_3/lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_3/lstm_3/while/lstm_cell_3/ConstА
5sequential_3/lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_3/lstm_3/while/lstm_cell_3/split/split_dimџ
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOpEsequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02<
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOpП
+sequential_3/lstm_3/while/lstm_cell_3/splitSplit>sequential_3/lstm_3/while/lstm_cell_3/split/split_dim:output:0Bsequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2-
+sequential_3/lstm_3/while/lstm_cell_3/split
,sequential_3/lstm_3/while/lstm_cell_3/MatMulMatMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_3/lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2.
,sequential_3/lstm_3/while/lstm_cell_3/MatMul
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_1MatMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_3/lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_1
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_2MatMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_3/lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_2
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_3MatMulDsequential_3/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:04sequential_3/lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_3 
-sequential_3/lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_1Д
7sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dim
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOpGsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02>
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpЗ
-sequential_3/lstm_3/while/lstm_cell_3/split_1Split@sequential_3/lstm_3/while/lstm_cell_3/split_1/split_dim:output:0Dsequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2/
-sequential_3/lstm_3/while/lstm_cell_3/split_1
-sequential_3/lstm_3/while/lstm_cell_3/BiasAddBiasAdd6sequential_3/lstm_3/while/lstm_cell_3/MatMul:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2/
-sequential_3/lstm_3/while/lstm_cell_3/BiasAdd
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_1:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_2:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd8sequential_3/lstm_3/while/lstm_cell_3/MatMul_3:product:06sequential_3/lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@21
/sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3ђ
)sequential_3/lstm_3/while/lstm_cell_3/mulMul'sequential_3_lstm_3_while_placeholder_28sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/while/lstm_cell_3/mulі
+sequential_3/lstm_3/while/lstm_cell_3/mul_1Mul'sequential_3_lstm_3_while_placeholder_28sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_1і
+sequential_3/lstm_3/while/lstm_cell_3/mul_2Mul'sequential_3_lstm_3_while_placeholder_28sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_2і
+sequential_3/lstm_3/while/lstm_cell_3/mul_3Mul'sequential_3_lstm_3_while_placeholder_28sequential_3/lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_3э
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype026
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOpЧ
9sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stackЫ
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1Ы
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2р
3sequential_3/lstm_3/while/lstm_cell_3/strided_sliceStridedSlice<sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp:value:0Bsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack:output:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask25
3sequential_3/lstm_3/while/lstm_cell_3/strided_slice
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_4MatMul-sequential_3/lstm_3/while/lstm_cell_3/mul:z:0<sequential_3/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_4
)sequential_3/lstm_3/while/lstm_cell_3/addAddV26sequential_3/lstm_3/while/lstm_cell_3/BiasAdd:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)sequential_3/lstm_3/while/lstm_cell_3/addЃ
-sequential_3/lstm_3/while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_2Ѓ
-sequential_3/lstm_3/while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_3њ
+sequential_3/lstm_3/while/lstm_cell_3/Mul_4Mul-sequential_3/lstm_3/while/lstm_cell_3/add:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Mul_4ќ
+sequential_3/lstm_3/while/lstm_cell_3/Add_1Add/sequential_3/lstm_3/while/lstm_cell_3/Mul_4:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Add_1У
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2?
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yА
;sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/MinimumMinimum/sequential_3/lstm_3/while/lstm_cell_3/Add_1:z:0Fsequential_3/lstm_3/while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2=
;sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/MinimumГ
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/yЈ
3sequential_3/lstm_3/while/lstm_cell_3/clip_by_valueMaximum?sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/Minimum:z:0>sequential_3/lstm_3/while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@25
3sequential_3/lstm_3/while/lstm_cell_3/clip_by_valueё
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1Ы
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stackЯ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Я
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2ь
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_5MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_1:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_5
+sequential_3/lstm_3/while/lstm_cell_3/add_2AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_1:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/add_2Ѓ
-sequential_3/lstm_3/while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_4Ѓ
-sequential_3/lstm_3/while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_5ќ
+sequential_3/lstm_3/while/lstm_cell_3/Mul_5Mul/sequential_3/lstm_3/while/lstm_cell_3/add_2:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Mul_5ќ
+sequential_3/lstm_3/while/lstm_cell_3/Add_3Add/sequential_3/lstm_3/while/lstm_cell_3/Mul_5:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Add_3Ч
?sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/yЖ
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/MinimumMinimum/sequential_3/lstm_3/while/lstm_cell_3/Add_3:z:0Hsequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2?
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/MinimumЗ
7sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/yА
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1MaximumAsequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum:z:0@sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@27
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1ї
+sequential_3/lstm_3/while/lstm_cell_3/mul_6Mul9sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_1:z:0'sequential_3_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_6ё
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2Ы
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stackЯ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Я
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2ь
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_6MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_2:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_6
+sequential_3/lstm_3/while/lstm_cell_3/add_4AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_2:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/add_4У
*sequential_3/lstm_3/while/lstm_cell_3/TanhTanh/sequential_3/lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2,
*sequential_3/lstm_3/while/lstm_cell_3/Tanhќ
+sequential_3/lstm_3/while/lstm_cell_3/mul_7Mul7sequential_3/lstm_3/while/lstm_cell_3/clip_by_value:z:0.sequential_3/lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_7ї
+sequential_3/lstm_3/while/lstm_cell_3/add_5AddV2/sequential_3/lstm_3/while/lstm_cell_3/mul_6:z:0/sequential_3/lstm_3/while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/add_5ё
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype028
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3Ы
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2=
;sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stackЯ
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Я
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2ь
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice>sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:0Dsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:0Fsequential_3/lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask27
5sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_7MatMul/sequential_3/lstm_3/while/lstm_cell_3/mul_3:z:0>sequential_3/lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.sequential_3/lstm_3/while/lstm_cell_3/MatMul_7
+sequential_3/lstm_3/while/lstm_cell_3/add_6AddV28sequential_3/lstm_3/while/lstm_cell_3/BiasAdd_3:output:08sequential_3/lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/add_6Ѓ
-sequential_3/lstm_3/while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_6Ѓ
-sequential_3/lstm_3/while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_3/lstm_3/while/lstm_cell_3/Const_7ќ
+sequential_3/lstm_3/while/lstm_cell_3/Mul_8Mul/sequential_3/lstm_3/while/lstm_cell_3/add_6:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Mul_8ќ
+sequential_3/lstm_3/while/lstm_cell_3/Add_7Add/sequential_3/lstm_3/while/lstm_cell_3/Mul_8:z:06sequential_3/lstm_3/while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/Add_7Ч
?sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/yЖ
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/MinimumMinimum/sequential_3/lstm_3/while/lstm_cell_3/Add_7:z:0Hsequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2?
=sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/MinimumЗ
7sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/yА
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2MaximumAsequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum:z:0@sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@27
5sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2Ч
,sequential_3/lstm_3/while/lstm_cell_3/Tanh_1Tanh/sequential_3/lstm_3/while/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2.
,sequential_3/lstm_3/while/lstm_cell_3/Tanh_1
+sequential_3/lstm_3/while/lstm_cell_3/mul_9Mul9sequential_3/lstm_3/while/lstm_cell_3/clip_by_value_2:z:00sequential_3/lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2-
+sequential_3/lstm_3/while/lstm_cell_3/mul_9У
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_3_while_placeholder_1%sequential_3_lstm_3_while_placeholder/sequential_3/lstm_3/while/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem
sequential_3/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_3/while/add/yЙ
sequential_3/lstm_3/while/addAddV2%sequential_3_lstm_3_while_placeholder(sequential_3/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_3/while/add
!sequential_3/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_3/while/add_1/yк
sequential_3/lstm_3/while/add_1AddV2@sequential_3_lstm_3_while_sequential_3_lstm_3_while_loop_counter*sequential_3/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_3/while/add_1ј
"sequential_3/lstm_3/while/IdentityIdentity#sequential_3/lstm_3/while/add_1:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_3/while/Identity
$sequential_3/lstm_3/while/Identity_1IdentityFsequential_3_lstm_3_while_sequential_3_lstm_3_while_maximum_iterations5^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_1њ
$sequential_3/lstm_3/while/Identity_2Identity!sequential_3/lstm_3/while/add:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_2Ї
$sequential_3/lstm_3/while/Identity_3IdentityNsequential_3/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_3/while/Identity_3
$sequential_3/lstm_3/while/Identity_4Identity/sequential_3/lstm_3/while/lstm_cell_3/mul_9:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2&
$sequential_3/lstm_3/while/Identity_4
$sequential_3/lstm_3/while/Identity_5Identity/sequential_3/lstm_3/while/lstm_cell_3/add_5:z:05^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp7^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_17^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_27^sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_3;^sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp=^sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2&
$sequential_3/lstm_3/while/Identity_5"Q
"sequential_3_lstm_3_while_identity+sequential_3/lstm_3/while/Identity:output:0"U
$sequential_3_lstm_3_while_identity_1-sequential_3/lstm_3/while/Identity_1:output:0"U
$sequential_3_lstm_3_while_identity_2-sequential_3/lstm_3/while/Identity_2:output:0"U
$sequential_3_lstm_3_while_identity_3-sequential_3/lstm_3/while/Identity_3:output:0"U
$sequential_3_lstm_3_while_identity_4-sequential_3/lstm_3/while/Identity_4:output:0"U
$sequential_3_lstm_3_while_identity_5-sequential_3/lstm_3/while/Identity_5:output:0"
=sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource?sequential_3_lstm_3_while_lstm_cell_3_readvariableop_resource_0"
Esequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resourceGsequential_3_lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"
Csequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resourceEsequential_3_lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"
=sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1?sequential_3_lstm_3_while_sequential_3_lstm_3_strided_slice_1_0"ј
ysequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2l
4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp4sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp2p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_16sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_12p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_26sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_22p
6sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_36sequential_3/lstm_3/while/lstm_cell_3/ReadVariableOp_32x
:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp:sequential_3/lstm_3/while/lstm_cell_3/split/ReadVariableOp2|
<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp<sequential_3/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
А
Ш
while_cond_1766508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1766508___redundant_placeholder05
1while_while_cond_1766508___redundant_placeholder15
1while_while_cond_1766508___redundant_placeholder25
1while_while_cond_1766508___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
я	
о
E__inference_dense_13_layer_call_and_return_conditional_losses_1769636

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
яё
М

lstm_3_while_body_1767708*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0>
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_06
2lstm_3_while_lstm_cell_3_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor:
6lstm_3_while_lstm_cell_3_split_readvariableop_resource<
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource4
0lstm_3_while_lstm_cell_3_readvariableop_resourceЂ'lstm_3/while/lstm_cell_3/ReadVariableOpЂ)lstm_3/while/lstm_cell_3/ReadVariableOp_1Ђ)lstm_3/while/lstm_cell_3/ReadVariableOp_2Ђ)lstm_3/while/lstm_cell_3/ReadVariableOp_3Ђ-lstm_3/while/lstm_cell_3/split/ReadVariableOpЂ/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpб
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem
(lstm_3/while/lstm_cell_3/ones_like/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constш
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/ones_like
&lstm_3/while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2(
&lstm_3/while/lstm_cell_3/dropout/Constу
$lstm_3/while/lstm_cell_3/dropout/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:0/lstm_3/while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2&
$lstm_3/while/lstm_cell_3/dropout/MulЋ
&lstm_3/while/lstm_cell_3/dropout/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_3/while/lstm_cell_3/dropout/Shape
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform/lstm_3/while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2МоЧ2?
=lstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniformЇ
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>21
/lstm_3/while/lstm_cell_3/dropout/GreaterEqual/yЂ
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualGreaterEqualFlstm_3/while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:08lstm_3/while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2/
-lstm_3/while/lstm_cell_3/dropout/GreaterEqualЪ
%lstm_3/while/lstm_cell_3/dropout/CastCast1lstm_3/while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2'
%lstm_3/while/lstm_cell_3/dropout/Castо
&lstm_3/while/lstm_cell_3/dropout/Mul_1Mul(lstm_3/while/lstm_cell_3/dropout/Mul:z:0)lstm_3/while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/dropout/Mul_1
(lstm_3/while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2*
(lstm_3/while/lstm_cell_3/dropout_1/Constщ
&lstm_3/while/lstm_cell_3/dropout_1/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/dropout_1/MulЏ
(lstm_3/while/lstm_cell_3/dropout_1/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_1/ShapeЂ
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ъУќ2A
?lstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformЋ
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>23
1lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/yЊ
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/lstm_3/while/lstm_cell_3/dropout_1/GreaterEqualа
'lstm_3/while/lstm_cell_3/dropout_1/CastCast3lstm_3/while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2)
'lstm_3/while/lstm_cell_3/dropout_1/Castц
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_1/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/dropout_1/Mul_1
(lstm_3/while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2*
(lstm_3/while/lstm_cell_3/dropout_2/Constщ
&lstm_3/while/lstm_cell_3/dropout_2/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/dropout_2/MulЏ
(lstm_3/while/lstm_cell_3/dropout_2/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_2/ShapeЂ
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2З2A
?lstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformЋ
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>23
1lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/yЊ
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/lstm_3/while/lstm_cell_3/dropout_2/GreaterEqualа
'lstm_3/while/lstm_cell_3/dropout_2/CastCast3lstm_3/while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2)
'lstm_3/while/lstm_cell_3/dropout_2/Castц
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_2/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/dropout_2/Mul_1
(lstm_3/while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2*
(lstm_3/while/lstm_cell_3/dropout_3/Constщ
&lstm_3/while/lstm_cell_3/dropout_3/MulMul+lstm_3/while/lstm_cell_3/ones_like:output:01lstm_3/while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/dropout_3/MulЏ
(lstm_3/while/lstm_cell_3/dropout_3/ShapeShape+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/dropout_3/ShapeЂ
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_3/while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2бц2A
?lstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformЋ
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>23
1lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/yЊ
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualHlstm_3/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0:lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@21
/lstm_3/while/lstm_cell_3/dropout_3/GreaterEqualа
'lstm_3/while/lstm_cell_3/dropout_3/CastCast3lstm_3/while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2)
'lstm_3/while/lstm_cell_3/dropout_3/Castц
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1Mul*lstm_3/while/lstm_cell_3/dropout_3/Mul:z:0+lstm_3/while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/dropout_3/Mul_1
lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_3/Const
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimи
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2 
lstm_3/while/lstm_cell_3/splitр
lstm_3/while/lstm_cell_3/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
lstm_3/while/lstm_cell_3/MatMulф
!lstm_3/while/lstm_cell_3/MatMul_1MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_1ф
!lstm_3/while/lstm_cell_3/MatMul_2MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_2ф
!lstm_3/while/lstm_cell_3/MatMul_3MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_3
 lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_3/while/lstm_cell_3/Const_1
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimк
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1з
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/while/lstm_cell_3/BiasAddн
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_1н
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_2н
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_3Н
lstm_3/while/lstm_cell_3/mulMullstm_3_while_placeholder_2*lstm_3/while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/mulУ
lstm_3/while/lstm_cell_3/mul_1Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_1У
lstm_3/while/lstm_cell_3/mul_2Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_2У
lstm_3/while/lstm_cell_3/mul_3Mullstm_3_while_placeholder_2,lstm_3/while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_3Ц
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stackБ
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Б
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_sliceе
!lstm_3/while/lstm_cell_3/MatMul_4MatMul lstm_3/while/lstm_cell_3/mul:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_4Я
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/add
 lstm_3/while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_2
 lstm_3/while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_3Ц
lstm_3/while/lstm_cell_3/Mul_4Mul lstm_3/while/lstm_cell_3/add:z:0)lstm_3/while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_4Ш
lstm_3/while/lstm_cell_3/Add_1Add"lstm_3/while/lstm_cell_3/Mul_4:z:0)lstm_3/while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_1Љ
0lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yќ
.lstm_3/while/lstm_cell_3/clip_by_value/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_1:z:09lstm_3/while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.lstm_3/while/lstm_cell_3/clip_by_value/Minimum
(lstm_3/while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(lstm_3/while/lstm_cell_3/clip_by_value/yє
&lstm_3/while/lstm_cell_3/clip_by_valueMaximum2lstm_3/while/lstm_cell_3/clip_by_value/Minimum:z:01lstm_3/while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/clip_by_valueЪ
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1Б
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1й
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_1:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_5е
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_2
 lstm_3/while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_4
 lstm_3/while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_5Ш
lstm_3/while/lstm_cell_3/Mul_5Mul"lstm_3/while/lstm_cell_3/add_2:z:0)lstm_3/while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_5Ш
lstm_3/while/lstm_cell_3/Add_3Add"lstm_3/while/lstm_cell_3/Mul_5:z:0)lstm_3/while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_3­
2lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/y
0lstm_3/while/lstm_cell_3/clip_by_value_1/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_3:z:0;lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@22
0lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum
*lstm_3/while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_3/while/lstm_cell_3/clip_by_value_1/yќ
(lstm_3/while/lstm_cell_3/clip_by_value_1Maximum4lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum:z:03lstm_3/while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/clip_by_value_1У
lstm_3/while/lstm_cell_3/mul_6Mul,lstm_3/while/lstm_cell_3/clip_by_value_1:z:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_6Ъ
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2Б
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2й
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_2:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_6е
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_4
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/TanhШ
lstm_3/while/lstm_cell_3/mul_7Mul*lstm_3/while/lstm_cell_3/clip_by_value:z:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_7У
lstm_3/while/lstm_cell_3/add_5AddV2"lstm_3/while/lstm_cell_3/mul_6:z:0"lstm_3/while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_5Ъ
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3Б
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3й
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_3:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_7е
lstm_3/while/lstm_cell_3/add_6AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_6
 lstm_3/while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_6
 lstm_3/while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_7Ш
lstm_3/while/lstm_cell_3/Mul_8Mul"lstm_3/while/lstm_cell_3/add_6:z:0)lstm_3/while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_8Ш
lstm_3/while/lstm_cell_3/Add_7Add"lstm_3/while/lstm_cell_3/Mul_8:z:0)lstm_3/while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_7­
2lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/y
0lstm_3/while/lstm_cell_3/clip_by_value_2/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_7:z:0;lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@22
0lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum
*lstm_3/while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_3/while/lstm_cell_3/clip_by_value_2/yќ
(lstm_3/while/lstm_cell_3/clip_by_value_2Maximum4lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum:z:03lstm_3/while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/clip_by_value_2 
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
lstm_3/while/lstm_cell_3/Tanh_1Ь
lstm_3/while/lstm_cell_3/mul_9Mul,lstm_3/while/lstm_cell_3/clip_by_value_2:z:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_9
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2В
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3Є
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_9:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/Identity_4Є
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_5:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ф
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
Ё	

.__inference_sequential_3_layer_call_fn_1767448
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_17674232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input


д
lstm_3_while_cond_1767707*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1C
?lstm_3_while_lstm_3_while_cond_1767707___redundant_placeholder0C
?lstm_3_while_lstm_3_while_cond_1767707___redundant_placeholder1C
?lstm_3_while_lstm_3_while_cond_1767707___redundant_placeholder2C
?lstm_3_while_lstm_3_while_cond_1767707___redundant_placeholder3
lstm_3_while_identity

lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
А
Ш
while_cond_1767069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1767069___redundant_placeholder05
1while_while_cond_1767069___redundant_placeholder15
1while_while_cond_1767069___redundant_placeholder25
1while_while_cond_1767069___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:
Л
Э
-__inference_lstm_cell_3_layer_call_fn_1769909

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2ЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17659852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/1


(__inference_lstm_3_layer_call_fn_1768933
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17665782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
%

while_body_1766509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_1766533_0
while_lstm_cell_3_1766535_0
while_lstm_cell_3_1766537_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_1766533
while_lstm_cell_3_1766535
while_lstm_cell_3_1766537Ђ)while/lstm_cell_3/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_1766533_0while_lstm_cell_3_1766535_0while_lstm_cell_3_1766537_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17660832+
)while/lstm_cell_3/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_3_1766533while_lstm_cell_3_1766533_0"8
while_lstm_cell_3_1766535while_lstm_cell_3_1766535_0"8
while_lstm_cell_3_1766537while_lstm_cell_3_1766537_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ъ
љ
I__inference_sequential_3_layer_call_and_return_conditional_losses_1768227

inputs4
0lstm_3_lstm_cell_3_split_readvariableop_resource6
2lstm_3_lstm_cell_3_split_1_readvariableop_resource.
*lstm_3_lstm_cell_3_readvariableop_resource+
'dense_15_matmul_readvariableop_resource,
(dense_15_biasadd_readvariableop_resource+
'dense_14_matmul_readvariableop_resource,
(dense_14_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource+
'dense_12_matmul_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource
identityЂdense_12/BiasAdd/ReadVariableOpЂdense_12/MatMul/ReadVariableOpЂdense_13/BiasAdd/ReadVariableOpЂdense_13/MatMul/ReadVariableOpЂdense_14/BiasAdd/ReadVariableOpЂdense_14/MatMul/ReadVariableOpЂdense_15/BiasAdd/ReadVariableOpЂdense_15/MatMul/ReadVariableOpЂ!lstm_3/lstm_cell_3/ReadVariableOpЂ#lstm_3/lstm_cell_3/ReadVariableOp_1Ђ#lstm_3/lstm_cell_3/ReadVariableOp_2Ђ#lstm_3/lstm_cell_3/ReadVariableOp_3Ђ'lstm_3/lstm_cell_3/split/ReadVariableOpЂ)lstm_3/lstm_cell_3/split_1/ReadVariableOpЂlstm_3/whileR
lstm_3/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_3/Shape
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicej
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros/mul/y
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros/Less/y
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessp
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros/packed/1
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/zerosn
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros_1/mul/y
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_3/zeros_1/Less/y
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lesst
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_3/zeros_1/packed/1Ѕ
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/zeros_1
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm
lstm_3/transpose	Transposeinputslstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"lstm_3/TensorArrayV2/element_shapeЮ
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2Э
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2І
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
lstm_3/strided_slice_2
"lstm_3/lstm_cell_3/ones_like/ShapeShapelstm_3/zeros:output:0*
T0*
_output_shapes
:2$
"lstm_3/lstm_cell_3/ones_like/Shape
"lstm_3/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_3/lstm_cell_3/ones_like/Constа
lstm_3/lstm_cell_3/ones_likeFill+lstm_3/lstm_cell_3/ones_like/Shape:output:0+lstm_3/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/ones_likev
lstm_3/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const
"lstm_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_3/split/split_dimФ
'lstm_3/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_3_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02)
'lstm_3/lstm_cell_3/split/ReadVariableOpѓ
lstm_3/lstm_cell_3/splitSplit+lstm_3/lstm_cell_3/split/split_dim:output:0/lstm_3/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_3/lstm_cell_3/splitЖ
lstm_3/lstm_cell_3/MatMulMatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMulК
lstm_3/lstm_cell_3/MatMul_1MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_1К
lstm_3/lstm_cell_3/MatMul_2MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_2К
lstm_3/lstm_cell_3/MatMul_3MatMullstm_3/strided_slice_2:output:0!lstm_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_3z
lstm_3/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/lstm_cell_3/Const_1
$lstm_3/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_3/lstm_cell_3/split_1/split_dimЦ
)lstm_3/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_3/lstm_cell_3/split_1/ReadVariableOpы
lstm_3/lstm_cell_3/split_1Split-lstm_3/lstm_cell_3/split_1/split_dim:output:01lstm_3/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_3/lstm_cell_3/split_1П
lstm_3/lstm_cell_3/BiasAddBiasAdd#lstm_3/lstm_cell_3/MatMul:product:0#lstm_3/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAddХ
lstm_3/lstm_cell_3/BiasAdd_1BiasAdd%lstm_3/lstm_cell_3/MatMul_1:product:0#lstm_3/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_1Х
lstm_3/lstm_cell_3/BiasAdd_2BiasAdd%lstm_3/lstm_cell_3/MatMul_2:product:0#lstm_3/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_2Х
lstm_3/lstm_cell_3/BiasAdd_3BiasAdd%lstm_3/lstm_cell_3/MatMul_3:product:0#lstm_3/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/BiasAdd_3Ї
lstm_3/lstm_cell_3/mulMullstm_3/zeros:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mulЋ
lstm_3/lstm_cell_3/mul_1Mullstm_3/zeros:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_1Ћ
lstm_3/lstm_cell_3/mul_2Mullstm_3/zeros:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_2Ћ
lstm_3/lstm_cell_3/mul_3Mullstm_3/zeros:output:0%lstm_3/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_3В
!lstm_3/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02#
!lstm_3/lstm_cell_3/ReadVariableOpЁ
&lstm_3/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_3/lstm_cell_3/strided_slice/stackЅ
(lstm_3/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_3/lstm_cell_3/strided_slice/stack_1Ѕ
(lstm_3/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_3/lstm_cell_3/strided_slice/stack_2ю
 lstm_3/lstm_cell_3/strided_sliceStridedSlice)lstm_3/lstm_cell_3/ReadVariableOp:value:0/lstm_3/lstm_cell_3/strided_slice/stack:output:01lstm_3/lstm_cell_3/strided_slice/stack_1:output:01lstm_3/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2"
 lstm_3/lstm_cell_3/strided_sliceН
lstm_3/lstm_cell_3/MatMul_4MatMullstm_3/lstm_cell_3/mul:z:0)lstm_3/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_4З
lstm_3/lstm_cell_3/addAddV2#lstm_3/lstm_cell_3/BiasAdd:output:0%lstm_3/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add}
lstm_3/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_2}
lstm_3/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_3Ў
lstm_3/lstm_cell_3/Mul_4Mullstm_3/lstm_cell_3/add:z:0#lstm_3/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_4А
lstm_3/lstm_cell_3/Add_1Addlstm_3/lstm_cell_3/Mul_4:z:0#lstm_3/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_1
*lstm_3/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_3/lstm_cell_3/clip_by_value/Minimum/yф
(lstm_3/lstm_cell_3/clip_by_value/MinimumMinimumlstm_3/lstm_cell_3/Add_1:z:03lstm_3/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/lstm_cell_3/clip_by_value/Minimum
"lstm_3/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"lstm_3/lstm_cell_3/clip_by_value/yм
 lstm_3/lstm_cell_3/clip_by_valueMaximum,lstm_3/lstm_cell_3/clip_by_value/Minimum:z:0+lstm_3/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/lstm_cell_3/clip_by_valueЖ
#lstm_3/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_1Ѕ
(lstm_3/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2*
(lstm_3/lstm_cell_3/strided_slice_1/stackЉ
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_1/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_1StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_1:value:01lstm_3/lstm_cell_3/strided_slice_1/stack:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_1С
lstm_3/lstm_cell_3/MatMul_5MatMullstm_3/lstm_cell_3/mul_1:z:0+lstm_3/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_5Н
lstm_3/lstm_cell_3/add_2AddV2%lstm_3/lstm_cell_3/BiasAdd_1:output:0%lstm_3/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_2}
lstm_3/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_4}
lstm_3/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_5А
lstm_3/lstm_cell_3/Mul_5Mullstm_3/lstm_cell_3/add_2:z:0#lstm_3/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_5А
lstm_3/lstm_cell_3/Add_3Addlstm_3/lstm_cell_3/Mul_5:z:0#lstm_3/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_3Ё
,lstm_3/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_3/lstm_cell_3/clip_by_value_1/Minimum/yъ
*lstm_3/lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_3/lstm_cell_3/Add_3:z:05lstm_3/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2,
*lstm_3/lstm_cell_3/clip_by_value_1/Minimum
$lstm_3/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_3/lstm_cell_3/clip_by_value_1/yф
"lstm_3/lstm_cell_3/clip_by_value_1Maximum.lstm_3/lstm_cell_3/clip_by_value_1/Minimum:z:0-lstm_3/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/clip_by_value_1Ў
lstm_3/lstm_cell_3/mul_6Mul&lstm_3/lstm_cell_3/clip_by_value_1:z:0lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_6Ж
#lstm_3/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_2Ѕ
(lstm_3/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2*
(lstm_3/lstm_cell_3/strided_slice_2/stackЉ
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_2/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_2StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_2:value:01lstm_3/lstm_cell_3/strided_slice_2/stack:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_2С
lstm_3/lstm_cell_3/MatMul_6MatMullstm_3/lstm_cell_3/mul_2:z:0+lstm_3/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_6Н
lstm_3/lstm_cell_3/add_4AddV2%lstm_3/lstm_cell_3/BiasAdd_2:output:0%lstm_3/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_4
lstm_3/lstm_cell_3/TanhTanhlstm_3/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/TanhА
lstm_3/lstm_cell_3/mul_7Mul$lstm_3/lstm_cell_3/clip_by_value:z:0lstm_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_7Ћ
lstm_3/lstm_cell_3/add_5AddV2lstm_3/lstm_cell_3/mul_6:z:0lstm_3/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_5Ж
#lstm_3/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_3_lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02%
#lstm_3/lstm_cell_3/ReadVariableOp_3Ѕ
(lstm_3/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2*
(lstm_3/lstm_cell_3/strided_slice_3/stackЉ
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_1Љ
*lstm_3/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_3/lstm_cell_3/strided_slice_3/stack_2њ
"lstm_3/lstm_cell_3/strided_slice_3StridedSlice+lstm_3/lstm_cell_3/ReadVariableOp_3:value:01lstm_3/lstm_cell_3/strided_slice_3/stack:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_3/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm_3/lstm_cell_3/strided_slice_3С
lstm_3/lstm_cell_3/MatMul_7MatMullstm_3/lstm_cell_3/mul_3:z:0+lstm_3/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/MatMul_7Н
lstm_3/lstm_cell_3/add_6AddV2%lstm_3/lstm_cell_3/BiasAdd_3:output:0%lstm_3/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/add_6}
lstm_3/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_3/lstm_cell_3/Const_6}
lstm_3/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_3/lstm_cell_3/Const_7А
lstm_3/lstm_cell_3/Mul_8Mullstm_3/lstm_cell_3/add_6:z:0#lstm_3/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Mul_8А
lstm_3/lstm_cell_3/Add_7Addlstm_3/lstm_cell_3/Mul_8:z:0#lstm_3/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Add_7Ё
,lstm_3/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_3/lstm_cell_3/clip_by_value_2/Minimum/yъ
*lstm_3/lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_3/lstm_cell_3/Add_7:z:05lstm_3/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2,
*lstm_3/lstm_cell_3/clip_by_value_2/Minimum
$lstm_3/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_3/lstm_cell_3/clip_by_value_2/yф
"lstm_3/lstm_cell_3/clip_by_value_2Maximum.lstm_3/lstm_cell_3/clip_by_value_2/Minimum:z:0-lstm_3/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/lstm_cell_3/clip_by_value_2
lstm_3/lstm_cell_3/Tanh_1Tanhlstm_3/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/Tanh_1Д
lstm_3/lstm_cell_3/mul_9Mul&lstm_3/lstm_cell_3/clip_by_value_2:z:0lstm_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/lstm_cell_3/mul_9
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2&
$lstm_3/TensorArrayV2_1/element_shapeд
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counterЬ
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_3_lstm_cell_3_split_readvariableop_resource2lstm_3_lstm_cell_3_split_1_readvariableop_resource*lstm_3_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_3_while_body_1768050*%
condR
lstm_3_while_cond_1768049*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
lstm_3/whileУ
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
lstm_3/strided_slice_3/stack
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2Ф
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
lstm_3/strided_slice_3
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/permС
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimeЈ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_15/MatMul/ReadVariableOpЇ
dense_15/MatMulMatMullstm_3/strided_slice_3:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/MatMulЇ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_15/BiasAdd/ReadVariableOpЅ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/BiasAdds
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense_15/ReluЈ
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_14/MatMul/ReadVariableOpЃ
dense_14/MatMulMatMuldense_15/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/MatMulЇ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_14/BiasAdd/ReadVariableOpЅ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_14/ReluЈ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_13/MatMul/ReadVariableOpЃ
dense_13/MatMulMatMuldense_14/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/MatMulЇ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_13/BiasAdd/ReadVariableOpЅ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/BiasAdds
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_13/ReluЈ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_12/MatMul/ReadVariableOpЃ
dense_12/MatMulMatMuldense_13/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_12/MatMulЇ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOpЅ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_12/BiasAddє
IdentityIdentitydense_12/BiasAdd:output:0 ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp"^lstm_3/lstm_cell_3/ReadVariableOp$^lstm_3/lstm_cell_3/ReadVariableOp_1$^lstm_3/lstm_cell_3/ReadVariableOp_2$^lstm_3/lstm_cell_3/ReadVariableOp_3(^lstm_3/lstm_cell_3/split/ReadVariableOp*^lstm_3/lstm_cell_3/split_1/ReadVariableOp^lstm_3/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2F
!lstm_3/lstm_cell_3/ReadVariableOp!lstm_3/lstm_cell_3/ReadVariableOp2J
#lstm_3/lstm_cell_3/ReadVariableOp_1#lstm_3/lstm_cell_3/ReadVariableOp_12J
#lstm_3/lstm_cell_3/ReadVariableOp_2#lstm_3/lstm_cell_3/ReadVariableOp_22J
#lstm_3/lstm_cell_3/ReadVariableOp_3#lstm_3/lstm_cell_3/ReadVariableOp_32R
'lstm_3/lstm_cell_3/split/ReadVariableOp'lstm_3/lstm_cell_3/split/ReadVariableOp2V
)lstm_3/lstm_cell_3/split_1/ReadVariableOp)lstm_3/lstm_cell_3/split_1/ReadVariableOp2
lstm_3/whilelstm_3/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
%

while_body_1766377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_3_1766401_0
while_lstm_cell_3_1766403_0
while_lstm_cell_3_1766405_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_3_1766401
while_lstm_cell_3_1766403
while_lstm_cell_3_1766405Ђ)while/lstm_cell_3/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_1766401_0while_lstm_cell_3_1766403_0while_lstm_cell_3_1766405_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ@:џџџџџџџџџ@:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_17659852+
)while/lstm_cell_3/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4Т
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2*^while/lstm_cell_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_3_1766401while_lstm_cell_3_1766401_0"8
while_lstm_cell_3_1766403while_lstm_cell_3_1766403_0"8
while_lstm_cell_3_1766405while_lstm_cell_3_1766405_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
о

*__inference_dense_15_layer_call_fn_1769605

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_17672612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ге
Ч
while_body_1768446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2!
while/lstm_cell_3/dropout/ConstЧ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2Хс§28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&while/lstm_cell_3/dropout/GreaterEqualЕ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2 
while/lstm_cell_3/dropout/CastТ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_1/ConstЭ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2§ї2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_1/GreaterEqualЛ
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_1/CastЪ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_2/ConstЭ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ё2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_2/GreaterEqualЛ
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_2/CastЪ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_3/ConstЭ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2н2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_3/GreaterEqualЛ
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_3/CastЪ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_3/Mul_1t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ё
while/lstm_cell_3/mulMulwhile_placeholder_2#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulЇ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1Ї
while/lstm_cell_3/mul_2Mulwhile_placeholder_2%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2Ї
while/lstm_cell_3/mul_3Mulwhile_placeholder_2%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
ФЃ
Ч
while_body_1768761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_liket
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ђ
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulІ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1І
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2І
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
\

H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769892

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpZ
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
	ones_likeP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_3a
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mule
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1e
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2e
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
addW
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3b
Mul_4Muladd:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_4d
Add_1Add	Mul_4:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_2W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5d
Mul_5Mul	add_2:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_5d
Add_3Add	Mul_5:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1f
mul_6Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_6}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanhd
mul_7Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_7_
add_5AddV2	mul_6:z:0	mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_6W
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_6W
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_7d
Mul_8Mul	add_6:z:0Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_8d
Add_7Add	Mul_8:z:0Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1h
mul_9Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_9з
IdentityIdentity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityл

Identity_1Identity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1л

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states/1
Ге
Ч
while_body_1766755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_like
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2!
while/lstm_cell_3/dropout/ConstЧ
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/dropout/Mul
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_3/dropout/Shape
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ЕЊ28
6while/lstm_cell_3/dropout/random_uniform/RandomUniform
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2*
(while/lstm_cell_3/dropout/GreaterEqual/y
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&while/lstm_cell_3/dropout/GreaterEqualЕ
while/lstm_cell_3/dropout/CastCast*while/lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2 
while/lstm_cell_3/dropout/CastТ
while/lstm_cell_3/dropout/Mul_1Mul!while/lstm_cell_3/dropout/Mul:z:0"while/lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout/Mul_1
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_1/ConstЭ
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_1/Mul
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_1/Shape
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ЫоА2:
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_1/GreaterEqual/y
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_1/GreaterEqualЛ
 while/lstm_cell_3/dropout_1/CastCast,while/lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_1/CastЪ
!while/lstm_cell_3/dropout_1/Mul_1Mul#while/lstm_cell_3/dropout_1/Mul:z:0$while/lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_1/Mul_1
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_2/ConstЭ
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_2/Mul
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_2/Shape
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2­2:
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_2/GreaterEqual/y
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_2/GreaterEqualЛ
 while/lstm_cell_3/dropout_2/CastCast,while/lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_2/CastЪ
!while/lstm_cell_3/dropout_2/Mul_1Mul#while/lstm_cell_3/dropout_2/Mul:z:0$while/lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_2/Mul_1
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2#
!while/lstm_cell_3/dropout_3/ConstЭ
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/dropout_3/Mul
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_3/dropout_3/Shape
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2C2:
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2,
*while/lstm_cell_3/dropout_3/GreaterEqual/y
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(while/lstm_cell_3/dropout_3/GreaterEqualЛ
 while/lstm_cell_3/dropout_3/CastCast,while/lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2"
 while/lstm_cell_3/dropout_3/CastЪ
!while/lstm_cell_3/dropout_3/Mul_1Mul#while/lstm_cell_3/dropout_3/Mul:z:0$while/lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/dropout_3/Mul_1t
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ё
while/lstm_cell_3/mulMulwhile_placeholder_2#while/lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulЇ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2%while/lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1Ї
while/lstm_cell_3/mul_2Mulwhile_placeholder_2%while/lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2Ї
while/lstm_cell_3/mul_3Mulwhile_placeholder_2%while/lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
я	
о
E__inference_dense_14_layer_call_and_return_conditional_losses_1767288

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ё	

.__inference_sequential_3_layer_call_fn_1767506
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_3_layer_call_and_return_conditional_losses_17674812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input
ФЃ
Ч
while_body_1767070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_3_split_readvariableop_resource_07
3while_lstm_cell_3_split_1_readvariableop_resource_0/
+while_lstm_cell_3_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_3_split_readvariableop_resource5
1while_lstm_cell_3_split_1_readvariableop_resource-
)while_lstm_cell_3_readvariableop_resourceЂ while/lstm_cell_3/ReadVariableOpЂ"while/lstm_cell_3/ReadVariableOp_1Ђ"while/lstm_cell_3/ReadVariableOp_2Ђ"while/lstm_cell_3/ReadVariableOp_3Ђ&while/lstm_cell_3/split/ReadVariableOpЂ(while/lstm_cell_3/split_1/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell_3/ones_like/Shape
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_3/ones_like/ConstЬ
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/ones_liket
while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_3/split/split_dimУ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02(
&while/lstm_cell_3/split/ReadVariableOpя
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
while/lstm_cell_3/splitФ
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMulШ
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_1Ш
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_2Ш
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_3x
while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_3/Const_1
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_3/split_1/split_dimХ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_3/split_1/ReadVariableOpч
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell_3/split_1Л
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAddС
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_1С
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_2С
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/BiasAdd_3Ђ
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mulІ
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_1І
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_2І
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_3Б
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02"
 while/lstm_cell_3/ReadVariableOp
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_3/strided_slice/stackЃ
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice/stack_1Ѓ
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_3/strided_slice/stack_2ш
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell_3/strided_sliceЙ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_4Г
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add{
while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_2{
while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_3Њ
while/lstm_cell_3/Mul_4Mulwhile/lstm_cell_3/add:z:0"while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_4Ќ
while/lstm_cell_3/Add_1Addwhile/lstm_cell_3/Mul_4:z:0"while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_1
)while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_3/clip_by_value/Minimum/yр
'while/lstm_cell_3/clip_by_value/MinimumMinimumwhile/lstm_cell_3/Add_1:z:02while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2)
'while/lstm_cell_3/clip_by_value/Minimum
!while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_3/clip_by_value/yи
while/lstm_cell_3/clip_by_valueMaximum+while/lstm_cell_3/clip_by_value/Minimum:z:0*while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
while/lstm_cell_3/clip_by_valueЕ
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_1Ѓ
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2)
'while/lstm_cell_3/strided_slice_1/stackЇ
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2+
)while/lstm_cell_3/strided_slice_1/stack_1Ї
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_1/stack_2є
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_1Н
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_5Й
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_2{
while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_4{
while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_5Ќ
while/lstm_cell_3/Mul_5Mulwhile/lstm_cell_3/add_2:z:0"while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_5Ќ
while/lstm_cell_3/Add_3Addwhile/lstm_cell_3/Mul_5:z:0"while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_3
+while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_1/Minimum/yц
)while/lstm_cell_3/clip_by_value_1/MinimumMinimumwhile/lstm_cell_3/Add_3:z:04while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_1/Minimum
#while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_1/yр
!while/lstm_cell_3/clip_by_value_1Maximum-while/lstm_cell_3/clip_by_value_1/Minimum:z:0,while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_1Ї
while/lstm_cell_3/mul_6Mul%while/lstm_cell_3/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_6Е
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_2Ѓ
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2)
'while/lstm_cell_3/strided_slice_2/stackЇ
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2+
)while/lstm_cell_3/strided_slice_2/stack_1Ї
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_2/stack_2є
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_2Н
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_6Й
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_4
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/TanhЌ
while/lstm_cell_3/mul_7Mul#while/lstm_cell_3/clip_by_value:z:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_7Ї
while/lstm_cell_3/add_5AddV2while/lstm_cell_3/mul_6:z:0while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_5Е
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02$
"while/lstm_cell_3/ReadVariableOp_3Ѓ
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2)
'while/lstm_cell_3/strided_slice_3/stackЇ
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_3/strided_slice_3/stack_1Ї
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_3/strided_slice_3/stack_2є
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2#
!while/lstm_cell_3/strided_slice_3Н
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/MatMul_7Й
while/lstm_cell_3/add_6AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/add_6{
while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
while/lstm_cell_3/Const_6{
while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_3/Const_7Ќ
while/lstm_cell_3/Mul_8Mulwhile/lstm_cell_3/add_6:z:0"while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Mul_8Ќ
while/lstm_cell_3/Add_7Addwhile/lstm_cell_3/Mul_8:z:0"while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Add_7
+while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_3/clip_by_value_2/Minimum/yц
)while/lstm_cell_3/clip_by_value_2/MinimumMinimumwhile/lstm_cell_3/Add_7:z:04while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2+
)while/lstm_cell_3/clip_by_value_2/Minimum
#while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_3/clip_by_value_2/yр
!while/lstm_cell_3/clip_by_value_2Maximum-while/lstm_cell_3/clip_by_value_2/Minimum:z:0,while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!while/lstm_cell_3/clip_by_value_2
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/Tanh_1А
while/lstm_cell_3/mul_9Mul%while/lstm_cell_3/clip_by_value_2:z:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/lstm_cell_3/mul_9п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ф
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityз
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ц
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ѓ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3х
while/Identity_4Identitywhile/lstm_cell_3/mul_9:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_4х
while/Identity_5Identitywhile/lstm_cell_3/add_5:z:0!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
УК
М

lstm_3_while_body_1768050*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0>
:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_06
2lstm_3_while_lstm_cell_3_readvariableop_resource_0
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor:
6lstm_3_while_lstm_cell_3_split_readvariableop_resource<
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource4
0lstm_3_while_lstm_cell_3_readvariableop_resourceЂ'lstm_3/while/lstm_cell_3/ReadVariableOpЂ)lstm_3/while/lstm_cell_3/ReadVariableOp_1Ђ)lstm_3/while/lstm_cell_3/ReadVariableOp_2Ђ)lstm_3/while/lstm_cell_3/ReadVariableOp_3Ђ-lstm_3/while/lstm_cell_3/split/ReadVariableOpЂ/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpб
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem
(lstm_3/while/lstm_cell_3/ones_like/ShapeShapelstm_3_while_placeholder_2*
T0*
_output_shapes
:2*
(lstm_3/while/lstm_cell_3/ones_like/Shape
(lstm_3/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_3/while/lstm_cell_3/ones_like/Constш
"lstm_3/while/lstm_cell_3/ones_likeFill1lstm_3/while/lstm_cell_3/ones_like/Shape:output:01lstm_3/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/ones_like
lstm_3/while/lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_3/while/lstm_cell_3/Const
(lstm_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_3/split/split_dimи
-lstm_3/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	*
dtype02/
-lstm_3/while/lstm_cell_3/split/ReadVariableOp
lstm_3/while/lstm_cell_3/splitSplit1lstm_3/while/lstm_cell_3/split/split_dim:output:05lstm_3/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2 
lstm_3/while/lstm_cell_3/splitр
lstm_3/while/lstm_cell_3/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
lstm_3/while/lstm_cell_3/MatMulф
!lstm_3/while/lstm_cell_3/MatMul_1MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_1ф
!lstm_3/while/lstm_cell_3/MatMul_2MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_2ф
!lstm_3/while/lstm_cell_3/MatMul_3MatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_3
 lstm_3/while/lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_3/while/lstm_cell_3/Const_1
*lstm_3/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_3/while/lstm_cell_3/split_1/split_dimк
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp
 lstm_3/while/lstm_cell_3/split_1Split3lstm_3/while/lstm_cell_3/split_1/split_dim:output:07lstm_3/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2"
 lstm_3/while/lstm_cell_3/split_1з
 lstm_3/while/lstm_cell_3/BiasAddBiasAdd)lstm_3/while/lstm_cell_3/MatMul:product:0)lstm_3/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_3/while/lstm_cell_3/BiasAddн
"lstm_3/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_3/while/lstm_cell_3/MatMul_1:product:0)lstm_3/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_1н
"lstm_3/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_3/while/lstm_cell_3/MatMul_2:product:0)lstm_3/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_2н
"lstm_3/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_3/while/lstm_cell_3/MatMul_3:product:0)lstm_3/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_3/while/lstm_cell_3/BiasAdd_3О
lstm_3/while/lstm_cell_3/mulMullstm_3_while_placeholder_2+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/mulТ
lstm_3/while/lstm_cell_3/mul_1Mullstm_3_while_placeholder_2+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_1Т
lstm_3/while/lstm_cell_3/mul_2Mullstm_3_while_placeholder_2+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_2Т
lstm_3/while/lstm_cell_3/mul_3Mullstm_3_while_placeholder_2+lstm_3/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_3Ц
'lstm_3/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02)
'lstm_3/while/lstm_cell_3/ReadVariableOp­
,lstm_3/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_3/while/lstm_cell_3/strided_slice/stackБ
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_3/while/lstm_cell_3/strided_slice/stack_1Б
.lstm_3/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_3/while/lstm_cell_3/strided_slice/stack_2
&lstm_3/while/lstm_cell_3/strided_sliceStridedSlice/lstm_3/while/lstm_cell_3/ReadVariableOp:value:05lstm_3/while/lstm_cell_3/strided_slice/stack:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_3/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2(
&lstm_3/while/lstm_cell_3/strided_sliceе
!lstm_3/while/lstm_cell_3/MatMul_4MatMul lstm_3/while/lstm_cell_3/mul:z:0/lstm_3/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_4Я
lstm_3/while/lstm_cell_3/addAddV2)lstm_3/while/lstm_cell_3/BiasAdd:output:0+lstm_3/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/add
 lstm_3/while/lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_2
 lstm_3/while/lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_3Ц
lstm_3/while/lstm_cell_3/Mul_4Mul lstm_3/while/lstm_cell_3/add:z:0)lstm_3/while/lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_4Ш
lstm_3/while/lstm_cell_3/Add_1Add"lstm_3/while/lstm_cell_3/Mul_4:z:0)lstm_3/while/lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_1Љ
0lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0lstm_3/while/lstm_cell_3/clip_by_value/Minimum/yќ
.lstm_3/while/lstm_cell_3/clip_by_value/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_1:z:09lstm_3/while/lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@20
.lstm_3/while/lstm_cell_3/clip_by_value/Minimum
(lstm_3/while/lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(lstm_3/while/lstm_cell_3/clip_by_value/yє
&lstm_3/while/lstm_cell_3/clip_by_valueMaximum2lstm_3/while/lstm_cell_3/clip_by_value/Minimum:z:01lstm_3/while/lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2(
&lstm_3/while/lstm_cell_3/clip_by_valueЪ
)lstm_3/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_1Б
.lstm_3/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   20
.lstm_3/while/lstm_cell_3/strided_slice_1/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_1/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_3/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_1й
!lstm_3/while/lstm_cell_3/MatMul_5MatMul"lstm_3/while/lstm_cell_3/mul_1:z:01lstm_3/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_5е
lstm_3/while/lstm_cell_3/add_2AddV2+lstm_3/while/lstm_cell_3/BiasAdd_1:output:0+lstm_3/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_2
 lstm_3/while/lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_4
 lstm_3/while/lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_5Ш
lstm_3/while/lstm_cell_3/Mul_5Mul"lstm_3/while/lstm_cell_3/add_2:z:0)lstm_3/while/lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_5Ш
lstm_3/while/lstm_cell_3/Add_3Add"lstm_3/while/lstm_cell_3/Mul_5:z:0)lstm_3/while/lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_3­
2lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/y
0lstm_3/while/lstm_cell_3/clip_by_value_1/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_3:z:0;lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@22
0lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum
*lstm_3/while/lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_3/while/lstm_cell_3/clip_by_value_1/yќ
(lstm_3/while/lstm_cell_3/clip_by_value_1Maximum4lstm_3/while/lstm_cell_3/clip_by_value_1/Minimum:z:03lstm_3/while/lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/clip_by_value_1У
lstm_3/while/lstm_cell_3/mul_6Mul,lstm_3/while/lstm_cell_3/clip_by_value_1:z:0lstm_3_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_6Ъ
)lstm_3/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_2Б
.lstm_3/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.lstm_3/while/lstm_cell_3/strided_slice_2/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_2/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_3/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_2й
!lstm_3/while/lstm_cell_3/MatMul_6MatMul"lstm_3/while/lstm_cell_3/mul_2:z:01lstm_3/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_6е
lstm_3/while/lstm_cell_3/add_4AddV2+lstm_3/while/lstm_cell_3/BiasAdd_2:output:0+lstm_3/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_4
lstm_3/while/lstm_cell_3/TanhTanh"lstm_3/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/lstm_cell_3/TanhШ
lstm_3/while/lstm_cell_3/mul_7Mul*lstm_3/while/lstm_cell_3/clip_by_value:z:0!lstm_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_7У
lstm_3/while/lstm_cell_3/add_5AddV2"lstm_3/while/lstm_cell_3/mul_6:z:0"lstm_3/while/lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_5Ъ
)lstm_3/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_3_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	@*
dtype02+
)lstm_3/while/lstm_cell_3/ReadVariableOp_3Б
.lstm_3/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   20
.lstm_3/while/lstm_cell_3/strided_slice_3/stackЕ
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_1Е
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_3/while/lstm_cell_3/strided_slice_3/stack_2
(lstm_3/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_3/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_3/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_3/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2*
(lstm_3/while/lstm_cell_3/strided_slice_3й
!lstm_3/while/lstm_cell_3/MatMul_7MatMul"lstm_3/while/lstm_cell_3/mul_3:z:01lstm_3/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_3/while/lstm_cell_3/MatMul_7е
lstm_3/while/lstm_cell_3/add_6AddV2+lstm_3/while/lstm_cell_3/BiasAdd_3:output:0+lstm_3/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/add_6
 lstm_3/while/lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2"
 lstm_3/while/lstm_cell_3/Const_6
 lstm_3/while/lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_3/while/lstm_cell_3/Const_7Ш
lstm_3/while/lstm_cell_3/Mul_8Mul"lstm_3/while/lstm_cell_3/add_6:z:0)lstm_3/while/lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Mul_8Ш
lstm_3/while/lstm_cell_3/Add_7Add"lstm_3/while/lstm_cell_3/Mul_8:z:0)lstm_3/while/lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/Add_7­
2lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/y
0lstm_3/while/lstm_cell_3/clip_by_value_2/MinimumMinimum"lstm_3/while/lstm_cell_3/Add_7:z:0;lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@22
0lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum
*lstm_3/while/lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_3/while/lstm_cell_3/clip_by_value_2/yќ
(lstm_3/while/lstm_cell_3/clip_by_value_2Maximum4lstm_3/while/lstm_cell_3/clip_by_value_2/Minimum:z:03lstm_3/while/lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2*
(lstm_3/while/lstm_cell_3/clip_by_value_2 
lstm_3/while/lstm_cell_3/Tanh_1Tanh"lstm_3/while/lstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2!
lstm_3/while/lstm_cell_3/Tanh_1Ь
lstm_3/while/lstm_cell_3/mul_9Mul,lstm_3/while/lstm_cell_3/clip_by_value_2:z:0#lstm_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2 
lstm_3/while/lstm_cell_3/mul_9
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_3/mul_9:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2В
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3Є
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_3/mul_9:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/Identity_4Є
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_3/add_5:z:0(^lstm_3/while/lstm_cell_3/ReadVariableOp*^lstm_3/while/lstm_cell_3/ReadVariableOp_1*^lstm_3/while/lstm_cell_3/ReadVariableOp_2*^lstm_3/while/lstm_cell_3/ReadVariableOp_3.^lstm_3/while/lstm_cell_3/split/ReadVariableOp0^lstm_3/while/lstm_cell_3/split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_3/while/Identity_5"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"f
0lstm_3_while_lstm_cell_3_readvariableop_resource2lstm_3_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_3_while_lstm_cell_3_split_1_readvariableop_resource:lstm_3_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_3_while_lstm_cell_3_split_readvariableop_resource8lstm_3_while_lstm_cell_3_split_readvariableop_resource_0"Ф
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*Q
_input_shapes@
>: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : :::2R
'lstm_3/while/lstm_cell_3/ReadVariableOp'lstm_3/while/lstm_cell_3/ReadVariableOp2V
)lstm_3/while/lstm_cell_3/ReadVariableOp_1)lstm_3/while/lstm_cell_3/ReadVariableOp_12V
)lstm_3/while/lstm_cell_3/ReadVariableOp_2)lstm_3/while/lstm_cell_3/ReadVariableOp_22V
)lstm_3/while/lstm_cell_3/ReadVariableOp_3)lstm_3/while/lstm_cell_3/ReadVariableOp_32^
-lstm_3/while/lstm_cell_3/split/ReadVariableOp-lstm_3/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp/lstm_3/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: 
§

I__inference_sequential_3_layer_call_and_return_conditional_losses_1767389
lstm_3_input
lstm_3_1767361
lstm_3_1767363
lstm_3_1767365
dense_15_1767368
dense_15_1767370
dense_14_1767373
dense_14_1767375
dense_13_1767378
dense_13_1767380
dense_12_1767383
dense_12_1767385
identityЂ dense_12/StatefulPartitionedCallЂ dense_13/StatefulPartitionedCallЂ dense_14/StatefulPartitionedCallЂ dense_15/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCallЅ
lstm_3/StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputlstm_3_1767361lstm_3_1767363lstm_3_1767365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17672202 
lstm_3/StatefulPartitionedCallИ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_15_1767368dense_15_1767370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_17672612"
 dense_15/StatefulPartitionedCallК
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_14_1767373dense_14_1767375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_17672882"
 dense_14/StatefulPartitionedCallК
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_13_1767378dense_13_1767380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_17673152"
 dense_13/StatefulPartitionedCallК
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_12_1767383dense_12_1767385*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_17673412"
 dense_12/StatefulPartitionedCallЊ
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input
ё

%__inference_signature_wrapper_1767543
lstm_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCalllstm_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_17658152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:џџџџџџџџџ:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_3_input
л
З
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768628
inputs_0-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_like{
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout/ConstЏ
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout/Shapeѕ
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2зЦ22
0lstm_cell_3/dropout/random_uniform/RandomUniform
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2$
"lstm_cell_3/dropout/GreaterEqual/yю
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2"
 lstm_cell_3/dropout/GreaterEqualЃ
lstm_cell_3/dropout/CastCast$lstm_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/CastЊ
lstm_cell_3/dropout/Mul_1Mullstm_cell_3/dropout/Mul:z:0lstm_cell_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout/Mul_1
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_1/ConstЕ
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_1/Shapeћ
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2є Ц24
2lstm_cell_3/dropout_1/random_uniform/RandomUniform
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_1/GreaterEqual/yі
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_1/GreaterEqualЉ
lstm_cell_3/dropout_1/CastCast&lstm_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/CastВ
lstm_cell_3/dropout_1/Mul_1Mullstm_cell_3/dropout_1/Mul:z:0lstm_cell_3/dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_1/Mul_1
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_2/ConstЕ
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_2/Shapeћ
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2рфЉ24
2lstm_cell_3/dropout_2/random_uniform/RandomUniform
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_2/GreaterEqual/yі
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_2/GreaterEqualЉ
lstm_cell_3/dropout_2/CastCast&lstm_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/CastВ
lstm_cell_3/dropout_2/Mul_1Mullstm_cell_3/dropout_2/Mul:z:0lstm_cell_3/dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_2/Mul_1
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
lstm_cell_3/dropout_3/ConstЕ
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_3/dropout_3/Shapeћ
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2з­24
2lstm_cell_3/dropout_3/random_uniform/RandomUniform
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2&
$lstm_cell_3/dropout_3/GreaterEqual/yі
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2$
"lstm_cell_3/dropout_3/GreaterEqualЉ
lstm_cell_3/dropout_3/CastCast&lstm_cell_3/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/CastВ
lstm_cell_3/dropout_3/Mul_1Mullstm_cell_3/dropout_3/Mul:z:0lstm_cell_3/dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/dropout_3/Mul_1h
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/dropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1768446*
condR
while_cond_1768445*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
А
Ш
while_cond_1768760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1768760___redundant_placeholder05
1while_while_cond_1768760___redundant_placeholder15
1while_while_cond_1768760___redundant_placeholder25
1while_while_cond_1768760___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџ@:џџџџџџџџџ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
:


(__inference_lstm_3_layer_call_fn_1769585

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17672202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ
к
#__inference__traced_restore_1770199
file_prefix$
 assignvariableop_dense_15_kernel$
 assignvariableop_1_dense_15_bias&
"assignvariableop_2_dense_14_kernel$
 assignvariableop_3_dense_14_bias&
"assignvariableop_4_dense_13_kernel$
 assignvariableop_5_dense_13_bias&
"assignvariableop_6_dense_12_kernel$
 assignvariableop_7_dense_12_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate1
-assignvariableop_13_lstm_3_lstm_cell_3_kernel;
7assignvariableop_14_lstm_3_lstm_cell_3_recurrent_kernel/
+assignvariableop_15_lstm_3_lstm_cell_3_bias
assignvariableop_16_total
assignvariableop_17_count.
*assignvariableop_18_adam_dense_15_kernel_m,
(assignvariableop_19_adam_dense_15_bias_m.
*assignvariableop_20_adam_dense_14_kernel_m,
(assignvariableop_21_adam_dense_14_bias_m.
*assignvariableop_22_adam_dense_13_kernel_m,
(assignvariableop_23_adam_dense_13_bias_m.
*assignvariableop_24_adam_dense_12_kernel_m,
(assignvariableop_25_adam_dense_12_bias_m8
4assignvariableop_26_adam_lstm_3_lstm_cell_3_kernel_mB
>assignvariableop_27_adam_lstm_3_lstm_cell_3_recurrent_kernel_m6
2assignvariableop_28_adam_lstm_3_lstm_cell_3_bias_m.
*assignvariableop_29_adam_dense_15_kernel_v,
(assignvariableop_30_adam_dense_15_bias_v.
*assignvariableop_31_adam_dense_14_kernel_v,
(assignvariableop_32_adam_dense_14_bias_v.
*assignvariableop_33_adam_dense_13_kernel_v,
(assignvariableop_34_adam_dense_13_bias_v.
*assignvariableop_35_adam_dense_12_kernel_v,
(assignvariableop_36_adam_dense_12_bias_v8
4assignvariableop_37_adam_lstm_3_lstm_cell_3_kernel_vB
>assignvariableop_38_adam_lstm_3_lstm_cell_3_recurrent_kernel_v6
2assignvariableop_39_adam_lstm_3_lstm_cell_3_bias_v
identity_41ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9№
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*ќ
valueђBя)B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesр
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesЇ
Є:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_14_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_13_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_13_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_12_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_12_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8Ё
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ї
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11І
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ў
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Е
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_3_lstm_cell_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14П
AssignVariableOp_14AssignVariableOp7assignvariableop_14_lstm_3_lstm_cell_3_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Г
AssignVariableOp_15AssignVariableOp+assignvariableop_15_lstm_3_lstm_cell_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ё
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ё
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18В
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_15_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19А
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_15_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20В
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_14_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21А
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_14_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22В
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_13_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23А
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_13_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24В
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_12_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25А
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_12_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26М
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_3_lstm_cell_3_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ц
AssignVariableOp_27AssignVariableOp>assignvariableop_27_adam_lstm_3_lstm_cell_3_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28К
AssignVariableOp_28AssignVariableOp2assignvariableop_28_adam_lstm_3_lstm_cell_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29В
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_15_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30А
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_15_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31В
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_14_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32А
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_14_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33В
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_13_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34А
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_13_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35В
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_12_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36А
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_12_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37М
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_lstm_3_lstm_cell_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ц
AssignVariableOp_38AssignVariableOp>assignvariableop_38_adam_lstm_3_lstm_cell_3_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39К
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_lstm_3_lstm_cell_3_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_399
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЮ
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_40С
Identity_41IdentityIdentity_40:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_41"#
identity_41Identity_41:output:0*З
_input_shapesЅ
Ђ: ::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
я	
о
E__inference_dense_14_layer_call_and_return_conditional_losses_1769616

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
б

H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1765985

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shapeб
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ў2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shapeз
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ВЌж2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_1/GreaterEqual/yЦ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shapeз
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ћ­Щ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_2/GreaterEqual/yЦ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shapeз
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@*
dtype0*
seedв	*
seed2ЬЈ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>2
dropout_3/GreaterEqual/yЦ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dropout_3/Mul_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_3^
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
muld
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1d
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2d
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
addW
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3b
Mul_4Muladd:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_4d
Add_1Add	Mul_4:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_2W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5d
Mul_5Mul	add_2:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_5d
Add_3Add	Mul_5:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1f
mul_6Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_6}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanhd
mul_7Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_7_
add_5AddV2	mul_6:z:0	mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_6W
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_6W
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_7d
Mul_8Mul	add_6:z:0Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_8d
Add_7Add	Mul_8:z:0Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1h
mul_9Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_9з
IdentityIdentity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityл

Identity_1Identity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1л

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates
о

*__inference_dense_12_layer_call_fn_1769664

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_17673412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
о
E__inference_dense_12_layer_call_and_return_conditional_losses_1767341

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я	
о
E__inference_dense_15_layer_call_and_return_conditional_losses_1767261

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ў
З
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768911
inputs_0-
)lstm_cell_3_split_readvariableop_resource/
+lstm_cell_3_split_1_readvariableop_resource'
#lstm_cell_3_readvariableop_resource
identityЂlstm_cell_3/ReadVariableOpЂlstm_cell_3/ReadVariableOp_1Ђlstm_cell_3/ReadVariableOp_2Ђlstm_cell_3/ReadVariableOp_3Ђ lstm_cell_3/split/ReadVariableOpЂ"lstm_cell_3/split_1/ReadVariableOpЂwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2x
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_3/ones_like/Shape
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_3/ones_like/ConstД
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/ones_likeh
lstm_cell_3/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const|
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/split/split_dimЏ
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	*
dtype02"
 lstm_cell_3/split/ReadVariableOpз
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
lstm_cell_3/split
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_1
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_2
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_3l
lstm_cell_3/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_3/Const_1
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_3/split_1/split_dimБ
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_3/split_1/ReadVariableOpЯ
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell_3/split_1Ѓ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAddЉ
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_1Љ
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_2Љ
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/BiasAdd_3
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_1
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_2
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_3
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_3/strided_slice/stack
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice/stack_1
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_3/strided_slice/stack_2Ф
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_sliceЁ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_4
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/addo
lstm_cell_3/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_2o
lstm_cell_3/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_3
lstm_cell_3/Mul_4Mullstm_cell_3/add:z:0lstm_cell_3/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_4
lstm_cell_3/Add_1Addlstm_cell_3/Mul_4:z:0lstm_cell_3/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_1
#lstm_cell_3/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_3/clip_by_value/Minimum/yШ
!lstm_cell_3/clip_by_value/MinimumMinimumlstm_cell_3/Add_1:z:0,lstm_cell_3/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2#
!lstm_cell_3/clip_by_value/Minimum
lstm_cell_3/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value/yР
lstm_cell_3/clip_by_valueMaximum%lstm_cell_3/clip_by_value/Minimum:z:0$lstm_cell_3/clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_valueЁ
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_1
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2#
!lstm_cell_3/strided_slice_1/stack
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#lstm_cell_3/strided_slice_1/stack_1
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_1/stack_2а
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_1Ѕ
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_5Ё
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_2o
lstm_cell_3/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_4o
lstm_cell_3/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_5
lstm_cell_3/Mul_5Mullstm_cell_3/add_2:z:0lstm_cell_3/Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_5
lstm_cell_3/Add_3Addlstm_cell_3/Mul_5:z:0lstm_cell_3/Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_3
%lstm_cell_3/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_1/Minimum/yЮ
#lstm_cell_3/clip_by_value_1/MinimumMinimumlstm_cell_3/Add_3:z:0.lstm_cell_3/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_1/Minimum
lstm_cell_3/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_1/yШ
lstm_cell_3/clip_by_value_1Maximum'lstm_cell_3/clip_by_value_1/Minimum:z:0&lstm_cell_3/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_1
lstm_cell_3/mul_6Mullstm_cell_3/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_6Ё
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_2
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!lstm_cell_3/strided_slice_2/stack
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2%
#lstm_cell_3/strided_slice_2/stack_1
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_2/stack_2а
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_2Ѕ
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_6Ё
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_4u
lstm_cell_3/TanhTanhlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh
lstm_cell_3/mul_7Mullstm_cell_3/clip_by_value:z:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_7
lstm_cell_3/add_5AddV2lstm_cell_3/mul_6:z:0lstm_cell_3/mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_5Ё
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	@*
dtype02
lstm_cell_3/ReadVariableOp_3
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2#
!lstm_cell_3/strided_slice_3/stack
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_3/strided_slice_3/stack_1
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_3/strided_slice_3/stack_2а
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell_3/strided_slice_3Ѕ
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/MatMul_7Ё
lstm_cell_3/add_6AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/add_6o
lstm_cell_3/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2
lstm_cell_3/Const_6o
lstm_cell_3/Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_3/Const_7
lstm_cell_3/Mul_8Mullstm_cell_3/add_6:z:0lstm_cell_3/Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Mul_8
lstm_cell_3/Add_7Addlstm_cell_3/Mul_8:z:0lstm_cell_3/Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Add_7
%lstm_cell_3/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_3/clip_by_value_2/Minimum/yЮ
#lstm_cell_3/clip_by_value_2/MinimumMinimumlstm_cell_3/Add_7:z:0.lstm_cell_3/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2%
#lstm_cell_3/clip_by_value_2/Minimum
lstm_cell_3/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_3/clip_by_value_2/yШ
lstm_cell_3/clip_by_value_2Maximum'lstm_cell_3/clip_by_value_2/Minimum:z:0&lstm_cell_3/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/clip_by_value_2y
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/Tanh_1
lstm_cell_3/mul_9Mullstm_cell_3/clip_by_value_2:z:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
lstm_cell_3/mul_9
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   2
TensorArrayV2_1/element_shapeИ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterу
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1768761*
condR
while_cond_1768760*K
output_shapes:
8: : : : :џџџџџџџџџ@:џџџџџџџџџ@: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЖ
IdentityIdentitystrided_slice_3:output:0^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ј[

H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1766083

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2ЂReadVariableOpЂReadVariableOp_1ЂReadVariableOp_2ЂReadVariableOp_3Ђsplit/ReadVariableOpЂsplit_1/ReadVariableOpX
ones_like/ShapeShapestates*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
	ones_likeP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype02
split/ReadVariableOpЇ
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitd
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
MatMulh
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_1h
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_2h
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:џџџџџџџџџ@2
	BiasAdd_3_
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mulc
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_1c
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_2c
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_3y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2ќ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_sliceq
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
addW
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3b
Mul_4Muladd:z:0Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_4d
Add_1Add	Mul_4:z:0Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_2W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5d
Mul_5Mul	add_2:z:0Const_4:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_5d
Add_3Add	Mul_5:z:0Const_5:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_1f
mul_6Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_6}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanhd
mul_7Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_7_
add_5AddV2	mul_6:z:0	mul_7:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    Р   2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
add_6W
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>2	
Const_6W
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_7d
Mul_8Mul	add_6:z:0Const_6:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Mul_8d
Add_7Add	Mul_8:z:0Const_7:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
Tanh_1h
mul_9Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
mul_9з
IdentityIdentity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identityл

Identity_1Identity	mul_9:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_1л

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*X
_input_shapesG
E:џџџџџџџџџ:џџџџџџџџџ@:џџџџџџџџџ@:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates


(__inference_lstm_3_layer_call_fn_1769574

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_3_layer_call_and_return_conditional_losses_17669372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultЅ
I
lstm_3_input9
serving_default_lstm_3_input:0џџџџџџџџџ<
dense_120
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Вя
ќ6
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
u__call__
*v&call_and_return_all_conditional_losses
w_default_save_signature"ю3
_tf_keras_sequentialЯ3{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_3_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.4, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 23]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 23]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_3_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.4, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
К
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_rnn_layerѓ
{"class_name": "LSTM", "name": "lstm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 23]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.4, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 23]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 23]}}
ђ

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ђ

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ђ

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
~__call__
*&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
ѕ

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
__call__
+&call_and_return_all_conditional_losses"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}

*iter

+beta_1

,beta_2
	-decay
.learning_ratem_m`mambmcmd$me%mf/mg0mh1mivjvkvlvmvnvo$vp%vq/vr0vs1vt"
	optimizer
n
/0
01
12
3
4
5
6
7
8
$9
%10"
trackable_list_wrapper
n
/0
01
12
3
4
5
6
7
8
$9
%10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
	variables
2layer_metrics

3layers
4layer_regularization_losses
trainable_variables
5metrics
6non_trainable_variables
	regularization_losses
u__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
Џ

/kernel
0recurrent_kernel
1bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
__call__
+&call_and_return_all_conditional_losses"ђ
_tf_keras_layerи{"class_name": "LSTMCell", "name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.4, "implementation": 1}}
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
Й
	variables
;layer_metrics

<layers
=layer_regularization_losses
trainable_variables
>metrics
?non_trainable_variables

@states
regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_15/kernel
:@2dense_15/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
	variables
Alayer_metrics
Blayer_regularization_losses

Clayers
trainable_variables
Dmetrics
Enon_trainable_variables
regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_14/kernel
: 2dense_14/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
	variables
Flayer_metrics
Glayer_regularization_losses

Hlayers
trainable_variables
Imetrics
Jnon_trainable_variables
regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_13/kernel
:2dense_13/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
 	variables
Klayer_metrics
Llayer_regularization_losses

Mlayers
!trainable_variables
Nmetrics
Onon_trainable_variables
"regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
!:2dense_12/kernel
:2dense_12/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
&	variables
Player_metrics
Qlayer_regularization_losses

Rlayers
'trainable_variables
Smetrics
Tnon_trainable_variables
(regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	2lstm_3/lstm_cell_3/kernel
6:4	@2#lstm_3/lstm_cell_3/recurrent_kernel
&:$2lstm_3/lstm_cell_3/bias
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
'
U0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
А
7	variables
Vlayer_metrics
Wlayer_regularization_losses

Xlayers
8trainable_variables
Ymetrics
Znon_trainable_variables
9regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Л
	[total
	\count
]	variables
^	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
[0
\1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
&:$@@2Adam/dense_15/kernel/m
 :@2Adam/dense_15/bias/m
&:$@ 2Adam/dense_14/kernel/m
 : 2Adam/dense_14/bias/m
&:$ 2Adam/dense_13/kernel/m
 :2Adam/dense_13/bias/m
&:$2Adam/dense_12/kernel/m
 :2Adam/dense_12/bias/m
1:/	2 Adam/lstm_3/lstm_cell_3/kernel/m
;:9	@2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/m
+:)2Adam/lstm_3/lstm_cell_3/bias/m
&:$@@2Adam/dense_15/kernel/v
 :@2Adam/dense_15/bias/v
&:$@ 2Adam/dense_14/kernel/v
 : 2Adam/dense_14/bias/v
&:$ 2Adam/dense_13/kernel/v
 :2Adam/dense_13/bias/v
&:$2Adam/dense_12/kernel/v
 :2Adam/dense_12/bias/v
1:/	2 Adam/lstm_3/lstm_cell_3/kernel/v
;:9	@2*Adam/lstm_3/lstm_cell_3/recurrent_kernel/v
+:)2Adam/lstm_3/lstm_cell_3/bias/v
2
.__inference_sequential_3_layer_call_fn_1768281
.__inference_sequential_3_layer_call_fn_1768254
.__inference_sequential_3_layer_call_fn_1767448
.__inference_sequential_3_layer_call_fn_1767506Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђ2я
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767358
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767389
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767917
I__inference_sequential_3_layer_call_and_return_conditional_losses_1768227Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
щ2ц
"__inference__wrapped_model_1765815П
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ */Ђ,
*'
lstm_3_inputџџџџџџџџџ
2
(__inference_lstm_3_layer_call_fn_1768922
(__inference_lstm_3_layer_call_fn_1769574
(__inference_lstm_3_layer_call_fn_1768933
(__inference_lstm_3_layer_call_fn_1769585е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
я2ь
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768628
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768911
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769280
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769563е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
д2б
*__inference_dense_15_layer_call_fn_1769605Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_15_layer_call_and_return_conditional_losses_1769596Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_14_layer_call_fn_1769625Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_14_layer_call_and_return_conditional_losses_1769616Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_13_layer_call_fn_1769645Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_13_layer_call_and_return_conditional_losses_1769636Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_dense_12_layer_call_fn_1769664Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_12_layer_call_and_return_conditional_losses_1769655Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
бBЮ
%__inference_signature_wrapper_1767543lstm_3_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ђ2
-__inference_lstm_cell_3_layer_call_fn_1769909
-__inference_lstm_cell_3_layer_call_fn_1769926О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
и2е
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769794
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769892О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 Ѓ
"__inference__wrapped_model_1765815}/10$%9Ђ6
/Ђ,
*'
lstm_3_inputџџџџџџџџџ
Њ "3Њ0
.
dense_12"
dense_12џџџџџџџџџЅ
E__inference_dense_12_layer_call_and_return_conditional_losses_1769655\$%/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_12_layer_call_fn_1769664O$%/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
E__inference_dense_13_layer_call_and_return_conditional_losses_1769636\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_13_layer_call_fn_1769645O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЅ
E__inference_dense_14_layer_call_and_return_conditional_losses_1769616\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ 
 }
*__inference_dense_14_layer_call_fn_1769625O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ Ѕ
E__inference_dense_15_layer_call_and_return_conditional_losses_1769596\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "%Ђ"

0џџџџџџџџџ@
 }
*__inference_dense_15_layer_call_fn_1769605O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "џџџџџџџџџ@Ф
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768628}/10OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 Ф
C__inference_lstm_3_layer_call_and_return_conditional_losses_1768911}/10OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 Д
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769280m/10?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ@
 Д
C__inference_lstm_3_layer_call_and_return_conditional_losses_1769563m/10?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ@
 
(__inference_lstm_3_layer_call_fn_1768922p/10OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@
(__inference_lstm_3_layer_call_fn_1768933p/10OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@
(__inference_lstm_3_layer_call_fn_1769574`/10?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ@
(__inference_lstm_3_layer_call_fn_1769585`/10?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ@Ъ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769794§/10Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ@
"
states/1џџџџџџџџџ@
p
Њ "sЂp
iЂf

0/0џџџџџџџџџ@
EB

0/1/0џџџџџџџџџ@

0/1/1џџџџџџџџџ@
 Ъ
H__inference_lstm_cell_3_layer_call_and_return_conditional_losses_1769892§/10Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ@
"
states/1џџџџџџџџџ@
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџ@
EB

0/1/0џџџџџџџџџ@

0/1/1џџџџџџџџџ@
 
-__inference_lstm_cell_3_layer_call_fn_1769909э/10Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ@
"
states/1џџџџџџџџџ@
p
Њ "cЂ`

0џџџџџџџџџ@
A>

1/0џџџџџџџџџ@

1/1џџџџџџџџџ@
-__inference_lstm_cell_3_layer_call_fn_1769926э/10Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџ@
"
states/1џџџџџџџџџ@
p 
Њ "cЂ`

0џџџџџџџџџ@
A>

1/0џџџџџџџџџ@

1/1џџџџџџџџџ@Ф
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767358w/10$%AЂ>
7Ђ4
*'
lstm_3_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767389w/10$%AЂ>
7Ђ4
*'
lstm_3_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_3_layer_call_and_return_conditional_losses_1767917q/10$%;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_3_layer_call_and_return_conditional_losses_1768227q/10$%;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_sequential_3_layer_call_fn_1767448j/10$%AЂ>
7Ђ4
*'
lstm_3_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_3_layer_call_fn_1767506j/10$%AЂ>
7Ђ4
*'
lstm_3_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_3_layer_call_fn_1768254d/10$%;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_3_layer_call_fn_1768281d/10$%;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЗ
%__inference_signature_wrapper_1767543/10$%IЂF
Ђ 
?Њ<
:
lstm_3_input*'
lstm_3_inputџџџџџџџџџ"3Њ0
.
dense_12"
dense_12џџџџџџџџџ