
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
R
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0
K
ExponentialDecay/learning_rateConst*
valueB
 *��8*
dtype0
G
ExponentialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
ExponentialDecay/Cast_1/xConst*
valueB	 :��*
dtype0
R
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

SrcT0*

DstT0
F
ExponentialDecay/Cast_2/xConst*
valueB
 *��Y?*
dtype0
\
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0
B
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0
W
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0
V
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0
T
PlaceholderPlaceholder"/device:CPU:0*
dtype0*
shape:���������&
V
Placeholder_1Placeholder"/device:CPU:0*
dtype0*
shape:���������
�
random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
min_after_dequeue�*
capacity�*
seed2 *
	container *
component_types
2*
shapes
:&:*

seed *
shared_name 
�
 random_shuffle_queue_EnqueueManyQueueEnqueueManyV2random_shuffle_queuePlaceholderPlaceholder_1"/device:CPU:0*
Tcomponents
2*

timeout_ms���������
M
"random_shuffle_queue_DequeueMany/nConst*
value
B :�*
dtype0
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2random_shuffle_queue"random_shuffle_queue_DequeueMany/n*
component_types
2*

timeout_ms���������
@
keep_prob_placeholderPlaceholder*
dtype0*
shape:
�
3Actor/Weights/h1/Initializer/truncated_normal/shapeConst*
valueB"&   �  *#
_class
loc:@Actor/Weights/h1*
dtype0
�
2Actor/Weights/h1/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@Actor/Weights/h1*
dtype0
�
4Actor/Weights/h1/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *���=*#
_class
loc:@Actor/Weights/h1
�
=Actor/Weights/h1/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3Actor/Weights/h1/Initializer/truncated_normal/shape*#
_class
loc:@Actor/Weights/h1*
dtype0*
seed2 *

seed *
T0
�
1Actor/Weights/h1/Initializer/truncated_normal/mulMul=Actor/Weights/h1/Initializer/truncated_normal/TruncatedNormal4Actor/Weights/h1/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@Actor/Weights/h1
�
-Actor/Weights/h1/Initializer/truncated_normalAdd1Actor/Weights/h1/Initializer/truncated_normal/mul2Actor/Weights/h1/Initializer/truncated_normal/mean*
T0*#
_class
loc:@Actor/Weights/h1
�
Actor/Weights/h1
VariableV2*
shape:	&�*
shared_name *#
_class
loc:@Actor/Weights/h1*
dtype0*
	container 
�
Actor/Weights/h1/AssignAssignActor/Weights/h1-Actor/Weights/h1/Initializer/truncated_normal*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h1*
validate_shape(
a
Actor/Weights/h1/readIdentityActor/Weights/h1*
T0*#
_class
loc:@Actor/Weights/h1
�
1Actor/Weights/h1/Regularizer/l2_regularizer/scaleConst*#
_class
loc:@Actor/Weights/h1*
valueB
 *
�#<*
dtype0
�
2Actor/Weights/h1/Regularizer/l2_regularizer/L2LossL2LossActor/Weights/h1/read*
T0*#
_class
loc:@Actor/Weights/h1
�
+Actor/Weights/h1/Regularizer/l2_regularizerMul1Actor/Weights/h1/Regularizer/l2_regularizer/scale2Actor/Weights/h1/Regularizer/l2_regularizer/L2Loss*
T0*#
_class
loc:@Actor/Weights/h1
Q
Actor/Weights/h1_1/tagConst*#
valueB BActor/Weights/h1_1*
dtype0
^
Actor/Weights/h1_1HistogramSummaryActor/Weights/h1_1/tagActor/Weights/h1/read*
T0
�
3Actor/Weights/h2/Initializer/truncated_normal/shapeConst*
dtype0*
valueB"�  ,  *#
_class
loc:@Actor/Weights/h2
�
2Actor/Weights/h2/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@Actor/Weights/h2*
dtype0
�
4Actor/Weights/h2/Initializer/truncated_normal/stddevConst*
valueB
 *���=*#
_class
loc:@Actor/Weights/h2*
dtype0
�
=Actor/Weights/h2/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3Actor/Weights/h2/Initializer/truncated_normal/shape*

seed *
T0*#
_class
loc:@Actor/Weights/h2*
dtype0*
seed2 
�
1Actor/Weights/h2/Initializer/truncated_normal/mulMul=Actor/Weights/h2/Initializer/truncated_normal/TruncatedNormal4Actor/Weights/h2/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@Actor/Weights/h2
�
-Actor/Weights/h2/Initializer/truncated_normalAdd1Actor/Weights/h2/Initializer/truncated_normal/mul2Actor/Weights/h2/Initializer/truncated_normal/mean*
T0*#
_class
loc:@Actor/Weights/h2
�
Actor/Weights/h2
VariableV2*#
_class
loc:@Actor/Weights/h2*
dtype0*
	container *
shape:
��*
shared_name 
�
Actor/Weights/h2/AssignAssignActor/Weights/h2-Actor/Weights/h2/Initializer/truncated_normal*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
a
Actor/Weights/h2/readIdentityActor/Weights/h2*#
_class
loc:@Actor/Weights/h2*
T0
�
1Actor/Weights/h2/Regularizer/l2_regularizer/scaleConst*
dtype0*#
_class
loc:@Actor/Weights/h2*
valueB
 *
�#<
�
2Actor/Weights/h2/Regularizer/l2_regularizer/L2LossL2LossActor/Weights/h2/read*
T0*#
_class
loc:@Actor/Weights/h2
�
+Actor/Weights/h2/Regularizer/l2_regularizerMul1Actor/Weights/h2/Regularizer/l2_regularizer/scale2Actor/Weights/h2/Regularizer/l2_regularizer/L2Loss*
T0*#
_class
loc:@Actor/Weights/h2
Q
Actor/Weights/h2_1/tagConst*
dtype0*#
valueB BActor/Weights/h2_1
^
Actor/Weights/h2_1HistogramSummaryActor/Weights/h2_1/tagActor/Weights/h2/read*
T0
�
3Actor/Weights/h3/Initializer/truncated_normal/shapeConst*
valueB",  d   *#
_class
loc:@Actor/Weights/h3*
dtype0
�
2Actor/Weights/h3/Initializer/truncated_normal/meanConst*
valueB
 *    *#
_class
loc:@Actor/Weights/h3*
dtype0
�
4Actor/Weights/h3/Initializer/truncated_normal/stddevConst*
valueB
 *���=*#
_class
loc:@Actor/Weights/h3*
dtype0
�
=Actor/Weights/h3/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3Actor/Weights/h3/Initializer/truncated_normal/shape*
T0*#
_class
loc:@Actor/Weights/h3*
dtype0*
seed2 *

seed 
�
1Actor/Weights/h3/Initializer/truncated_normal/mulMul=Actor/Weights/h3/Initializer/truncated_normal/TruncatedNormal4Actor/Weights/h3/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@Actor/Weights/h3
�
-Actor/Weights/h3/Initializer/truncated_normalAdd1Actor/Weights/h3/Initializer/truncated_normal/mul2Actor/Weights/h3/Initializer/truncated_normal/mean*
T0*#
_class
loc:@Actor/Weights/h3
�
Actor/Weights/h3
VariableV2*
shape:	�d*
shared_name *#
_class
loc:@Actor/Weights/h3*
dtype0*
	container 
�
Actor/Weights/h3/AssignAssignActor/Weights/h3-Actor/Weights/h3/Initializer/truncated_normal*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h3*
validate_shape(
a
Actor/Weights/h3/readIdentityActor/Weights/h3*#
_class
loc:@Actor/Weights/h3*
T0
�
1Actor/Weights/h3/Regularizer/l2_regularizer/scaleConst*#
_class
loc:@Actor/Weights/h3*
valueB
 *
�#<*
dtype0
�
2Actor/Weights/h3/Regularizer/l2_regularizer/L2LossL2LossActor/Weights/h3/read*#
_class
loc:@Actor/Weights/h3*
T0
�
+Actor/Weights/h3/Regularizer/l2_regularizerMul1Actor/Weights/h3/Regularizer/l2_regularizer/scale2Actor/Weights/h3/Regularizer/l2_regularizer/L2Loss*
T0*#
_class
loc:@Actor/Weights/h3
Q
Actor/Weights/h3_1/tagConst*
dtype0*#
valueB BActor/Weights/h3_1
^
Actor/Weights/h3_1HistogramSummaryActor/Weights/h3_1/tagActor/Weights/h3/read*
T0
�
4Actor/Weights/out/Initializer/truncated_normal/shapeConst*
valueB"d      *$
_class
loc:@Actor/Weights/out*
dtype0
�
3Actor/Weights/out/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *$
_class
loc:@Actor/Weights/out
�
5Actor/Weights/out/Initializer/truncated_normal/stddevConst*
valueB
 *���=*$
_class
loc:@Actor/Weights/out*
dtype0
�
>Actor/Weights/out/Initializer/truncated_normal/TruncatedNormalTruncatedNormal4Actor/Weights/out/Initializer/truncated_normal/shape*
T0*$
_class
loc:@Actor/Weights/out*
dtype0*
seed2 *

seed 
�
2Actor/Weights/out/Initializer/truncated_normal/mulMul>Actor/Weights/out/Initializer/truncated_normal/TruncatedNormal5Actor/Weights/out/Initializer/truncated_normal/stddev*
T0*$
_class
loc:@Actor/Weights/out
�
.Actor/Weights/out/Initializer/truncated_normalAdd2Actor/Weights/out/Initializer/truncated_normal/mul3Actor/Weights/out/Initializer/truncated_normal/mean*
T0*$
_class
loc:@Actor/Weights/out
�
Actor/Weights/out
VariableV2*
	container *
shape
:d*
shared_name *$
_class
loc:@Actor/Weights/out*
dtype0
�
Actor/Weights/out/AssignAssignActor/Weights/out.Actor/Weights/out/Initializer/truncated_normal*
use_locking(*
T0*$
_class
loc:@Actor/Weights/out*
validate_shape(
d
Actor/Weights/out/readIdentityActor/Weights/out*
T0*$
_class
loc:@Actor/Weights/out
�
2Actor/Weights/out/Regularizer/l2_regularizer/scaleConst*$
_class
loc:@Actor/Weights/out*
valueB
 *
�#<*
dtype0
�
3Actor/Weights/out/Regularizer/l2_regularizer/L2LossL2LossActor/Weights/out/read*
T0*$
_class
loc:@Actor/Weights/out
�
,Actor/Weights/out/Regularizer/l2_regularizerMul2Actor/Weights/out/Regularizer/l2_regularizer/scale3Actor/Weights/out/Regularizer/l2_regularizer/L2Loss*
T0*$
_class
loc:@Actor/Weights/out
S
Actor/Weights/out_1/tagConst*
dtype0*$
valueB BActor/Weights/out_1
a
Actor/Weights/out_1HistogramSummaryActor/Weights/out_1/tagActor/Weights/out/read*
T0
w
!Actor/Biases/b1/Initializer/ConstConst*
valueB�*���=*"
_class
loc:@Actor/Biases/b1*
dtype0
�
Actor/Biases/b1
VariableV2*
shared_name *"
_class
loc:@Actor/Biases/b1*
dtype0*
	container *
shape:�
�
Actor/Biases/b1/AssignAssignActor/Biases/b1!Actor/Biases/b1/Initializer/Const*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
^
Actor/Biases/b1/readIdentityActor/Biases/b1*
T0*"
_class
loc:@Actor/Biases/b1
O
Actor/Biases/b1_1/tagConst*"
valueB BActor/Biases/b1_1*
dtype0
[
Actor/Biases/b1_1HistogramSummaryActor/Biases/b1_1/tagActor/Biases/b1/read*
T0
w
!Actor/Biases/b2/Initializer/ConstConst*
valueB�*���=*"
_class
loc:@Actor/Biases/b2*
dtype0
�
Actor/Biases/b2
VariableV2*
dtype0*
	container *
shape:�*
shared_name *"
_class
loc:@Actor/Biases/b2
�
Actor/Biases/b2/AssignAssignActor/Biases/b2!Actor/Biases/b2/Initializer/Const*"
_class
loc:@Actor/Biases/b2*
validate_shape(*
use_locking(*
T0
^
Actor/Biases/b2/readIdentityActor/Biases/b2*
T0*"
_class
loc:@Actor/Biases/b2
O
Actor/Biases/b2_1/tagConst*"
valueB BActor/Biases/b2_1*
dtype0
[
Actor/Biases/b2_1HistogramSummaryActor/Biases/b2_1/tagActor/Biases/b2/read*
T0
v
!Actor/Biases/b3/Initializer/ConstConst*
valueBd*���=*"
_class
loc:@Actor/Biases/b3*
dtype0
�
Actor/Biases/b3
VariableV2*
shape:d*
shared_name *"
_class
loc:@Actor/Biases/b3*
dtype0*
	container 
�
Actor/Biases/b3/AssignAssignActor/Biases/b3!Actor/Biases/b3/Initializer/Const*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b3*
validate_shape(
^
Actor/Biases/b3/readIdentityActor/Biases/b3*
T0*"
_class
loc:@Actor/Biases/b3
O
Actor/Biases/b3_1/tagConst*"
valueB BActor/Biases/b3_1*
dtype0
[
Actor/Biases/b3_1HistogramSummaryActor/Biases/b3_1/tagActor/Biases/b3/read*
T0
x
"Actor/Biases/out/Initializer/ConstConst*
valueB*���=*#
_class
loc:@Actor/Biases/out*
dtype0
�
Actor/Biases/out
VariableV2*
	container *
shape:*
shared_name *#
_class
loc:@Actor/Biases/out*
dtype0
�
Actor/Biases/out/AssignAssignActor/Biases/out"Actor/Biases/out/Initializer/Const*
use_locking(*
T0*#
_class
loc:@Actor/Biases/out*
validate_shape(
a
Actor/Biases/out/readIdentityActor/Biases/out*
T0*#
_class
loc:@Actor/Biases/out
Q
Actor/Biases/out_1/tagConst*#
valueB BActor/Biases/out_1*
dtype0
^
Actor/Biases/out_1HistogramSummaryActor/Biases/out_1/tagActor/Biases/out/read*
T0
x
MatMulMatMul random_shuffle_queue_DequeueManyActor/Weights/h1/read*
T0*
transpose_a( *
transpose_b( 
1
AddAddMatMulActor/Biases/b1/read*
T0

TanhTanhAdd*
T0
D
dropout_1/ShapeConst*
valueB"�   �  *
dtype0
I
dropout_1/random_uniform/minConst*
valueB
 *    *
dtype0
I
dropout_1/random_uniform/maxConst*
valueB
 *  �?*
dtype0
w
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*

seed *
T0*
dtype0*
seed2 
h
dropout_1/random_uniform/subSubdropout_1/random_uniform/maxdropout_1/random_uniform/min*
T0
r
dropout_1/random_uniform/mulMul&dropout_1/random_uniform/RandomUniformdropout_1/random_uniform/sub*
T0
d
dropout_1/random_uniformAdddropout_1/random_uniform/muldropout_1/random_uniform/min*
T0
N
dropout_1/addAddkeep_prob_placeholderdropout_1/random_uniform*
T0
0
dropout_1/FloorFloordropout_1/add*
T0
>
dropout_1/divRealDivTanhkeep_prob_placeholder*
T0
=
dropout_1/mulMuldropout_1/divdropout_1/Floor*
T0
g
MatMul_1MatMuldropout_1/mulActor/Weights/h2/read*
transpose_a( *
transpose_b( *
T0
5
Add_1AddMatMul_1Actor/Biases/b2/read*
T0

Tanh_1TanhAdd_1*
T0
`
MatMul_2MatMulTanh_1Actor/Weights/h3/read*
T0*
transpose_a( *
transpose_b( 
5
Add_2AddMatMul_2Actor/Biases/b3/read*
T0

Tanh_2TanhAdd_2*
T0
a
MatMul_3MatMulTanh_2Actor/Weights/out/read*
transpose_a( *
transpose_b( *
T0
6
Add_3AddMatMul_3Actor/Biases/out/read*
T0
)
normalized_outputTanhAdd_3*
T0
:
ConstConst*
valueB"��?��?*
dtype0
<
Const_1Const*
dtype0*
valueB"33�>    
-
MulMulnormalized_outputConst*
T0
(

predictionAddMulConst_1*
T0
C
subSub
prediction"random_shuffle_queue_DequeueMany:1*
T0

AbsAbssub*
T0
@
Mean/reduction_indicesConst*
value	B : *
dtype0
O
MeanMeanAbsMean/reduction_indices*
T0*
	keep_dims( *

Tidx0
E
sub_1Sub
prediction"random_shuffle_queue_DequeueMany:1*
T0

Abs_1Abssub_1*
T0
<
Const_2Const*
valueB"       *
dtype0
D
Mean_1MeanAbs_1Const_2*
	keep_dims( *

Tidx0*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  �?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
X
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB"      *
dtype0
t
gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
Y
$gradients/Mean_1_grad/Tile/multiplesConst*
valueB"�      *
dtype0
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshape$gradients/Mean_1_grad/Tile/multiples*

Tmultiples0*
T0
P
gradients/Mean_1_grad/ShapeConst*
dtype0*
valueB"�      
F
gradients/Mean_1_grad/Shape_1Const*
dtype0*
valueB 
y
gradients/Mean_1_grad/ConstConst*.
_class$
" loc:@gradients/Mean_1_grad/Shape*
valueB: *
dtype0
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
{
gradients/Mean_1_grad/Const_1Const*.
_class$
" loc:@gradients/Mean_1_grad/Shape*
valueB: *
dtype0
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
y
gradients/Mean_1_grad/Maximum/yConst*.
_class$
" loc:@gradients/Mean_1_grad/Shape*
value	B :*
dtype0
�
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*.
_class$
" loc:@gradients/Mean_1_grad/Shape*
T0
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
1
gradients/Abs_1_grad/SignSignsub_1*
T0
b
gradients/Abs_1_grad/mulMulgradients/Mean_1_grad/truedivgradients/Abs_1_grad/Sign*
T0
O
gradients/sub_1_grad/ShapeConst*
dtype0*
valueB"�      
Q
gradients/sub_1_grad/Shape_1Const*
valueB"�      *
dtype0
�
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
�
gradients/sub_1_grad/SumSumgradients/Abs_1_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
�
gradients/sub_1_grad/Sum_1Sumgradients/Abs_1_grad/mul,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
�
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
T0
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
T
gradients/prediction_grad/ShapeConst*
valueB"�      *
dtype0
O
!gradients/prediction_grad/Shape_1Const*
valueB:*
dtype0
�
/gradients/prediction_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/prediction_grad/Shape!gradients/prediction_grad/Shape_1*
T0
�
gradients/prediction_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency/gradients/prediction_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
!gradients/prediction_grad/ReshapeReshapegradients/prediction_grad/Sumgradients/prediction_grad/Shape*
T0*
Tshape0
�
gradients/prediction_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency1gradients/prediction_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
#gradients/prediction_grad/Reshape_1Reshapegradients/prediction_grad/Sum_1!gradients/prediction_grad/Shape_1*
T0*
Tshape0
|
*gradients/prediction_grad/tuple/group_depsNoOp"^gradients/prediction_grad/Reshape$^gradients/prediction_grad/Reshape_1
�
2gradients/prediction_grad/tuple/control_dependencyIdentity!gradients/prediction_grad/Reshape+^gradients/prediction_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/prediction_grad/Reshape
�
4gradients/prediction_grad/tuple/control_dependency_1Identity#gradients/prediction_grad/Reshape_1+^gradients/prediction_grad/tuple/group_deps*6
_class,
*(loc:@gradients/prediction_grad/Reshape_1*
T0
M
gradients/Mul_grad/ShapeConst*
valueB"�      *
dtype0
H
gradients/Mul_grad/Shape_1Const*
valueB:*
dtype0
�
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
a
gradients/Mul_grad/mulMul2gradients/prediction_grad/tuple/control_dependencyConst*
T0
�
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
o
gradients/Mul_grad/mul_1Mulnormalized_output2gradients/prediction_grad/tuple/control_dependency*
T0
�
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
~
)gradients/normalized_output_grad/TanhGradTanhGradnormalized_output+gradients/Mul_grad/tuple/control_dependency*
T0
O
gradients/Add_3_grad/ShapeConst*
valueB"�      *
dtype0
J
gradients/Add_3_grad/Shape_1Const*
valueB:*
dtype0
�
*gradients/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_3_grad/Shapegradients/Add_3_grad/Shape_1*
T0
�
gradients/Add_3_grad/SumSum)gradients/normalized_output_grad/TanhGrad*gradients/Add_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
T0*
Tshape0
�
gradients/Add_3_grad/Sum_1Sum)gradients/normalized_output_grad/TanhGrad,gradients/Add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/Add_3_grad/Reshape_1Reshapegradients/Add_3_grad/Sum_1gradients/Add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_3_grad/tuple/group_depsNoOp^gradients/Add_3_grad/Reshape^gradients/Add_3_grad/Reshape_1
�
-gradients/Add_3_grad/tuple/control_dependencyIdentitygradients/Add_3_grad/Reshape&^gradients/Add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_3_grad/Reshape
�
/gradients/Add_3_grad/tuple/control_dependency_1Identitygradients/Add_3_grad/Reshape_1&^gradients/Add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_3_grad/Reshape_1
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/Add_3_grad/tuple/control_dependencyActor/Weights/out/read*
T0*
transpose_a( *
transpose_b(
�
 gradients/MatMul_3_grad/MatMul_1MatMulTanh_2-gradients/Add_3_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
m
gradients/Tanh_2_grad/TanhGradTanhGradTanh_20gradients/MatMul_3_grad/tuple/control_dependency*
T0
O
gradients/Add_2_grad/ShapeConst*
valueB"�   d   *
dtype0
J
gradients/Add_2_grad/Shape_1Const*
valueB:d*
dtype0
�
*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*
T0
�
gradients/Add_2_grad/SumSumgradients/Tanh_2_grad/TanhGrad*gradients/Add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*
T0*
Tshape0
�
gradients/Add_2_grad/Sum_1Sumgradients/Tanh_2_grad/TanhGrad,gradients/Add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
Tshape0*
T0
m
%gradients/Add_2_grad/tuple/group_depsNoOp^gradients/Add_2_grad/Reshape^gradients/Add_2_grad/Reshape_1
�
-gradients/Add_2_grad/tuple/control_dependencyIdentitygradients/Add_2_grad/Reshape&^gradients/Add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_2_grad/Reshape
�
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/Add_2_grad/tuple/control_dependencyActor/Weights/h3/read*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_2_grad/MatMul_1MatMulTanh_1-gradients/Add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
m
gradients/Tanh_1_grad/TanhGradTanhGradTanh_10gradients/MatMul_2_grad/tuple/control_dependency*
T0
O
gradients/Add_1_grad/ShapeConst*
valueB"�   ,  *
dtype0
K
gradients/Add_1_grad/Shape_1Const*
valueB:�*
dtype0
�
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0
�
gradients/Add_1_grad/SumSumgradients/Tanh_1_grad/TanhGrad*gradients/Add_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0
�
gradients/Add_1_grad/Sum_1Sumgradients/Tanh_1_grad/TanhGrad,gradients/Add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
�
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape
�
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyActor/Weights/h2/read*
transpose_b(*
T0*
transpose_a( 
�
 gradients/MatMul_1_grad/MatMul_1MatMuldropout_1/mul-gradients/Add_1_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
S
"gradients/dropout_1/mul_grad/ShapeShapedropout_1/div*
T0*
out_type0
W
$gradients/dropout_1/mul_grad/Shape_1Shapedropout_1/Floor*
T0*
out_type0
�
2gradients/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/mul_grad/Shape$gradients/dropout_1/mul_grad/Shape_1*
T0
s
 gradients/dropout_1/mul_grad/mulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout_1/Floor*
T0
�
 gradients/dropout_1/mul_grad/SumSum gradients/dropout_1/mul_grad/mul2gradients/dropout_1/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
$gradients/dropout_1/mul_grad/ReshapeReshape gradients/dropout_1/mul_grad/Sum"gradients/dropout_1/mul_grad/Shape*
T0*
Tshape0
s
"gradients/dropout_1/mul_grad/mul_1Muldropout_1/div0gradients/MatMul_1_grad/tuple/control_dependency*
T0
�
"gradients/dropout_1/mul_grad/Sum_1Sum"gradients/dropout_1/mul_grad/mul_14gradients/dropout_1/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
�
&gradients/dropout_1/mul_grad/Reshape_1Reshape"gradients/dropout_1/mul_grad/Sum_1$gradients/dropout_1/mul_grad/Shape_1*
T0*
Tshape0
�
-gradients/dropout_1/mul_grad/tuple/group_depsNoOp%^gradients/dropout_1/mul_grad/Reshape'^gradients/dropout_1/mul_grad/Reshape_1
�
5gradients/dropout_1/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_1/mul_grad/Reshape.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/mul_grad/Reshape
�
7gradients/dropout_1/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_1/mul_grad/Reshape_1.^gradients/dropout_1/mul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dropout_1/mul_grad/Reshape_1*
T0
W
"gradients/dropout_1/div_grad/ShapeConst*
valueB"�   �  *
dtype0
]
$gradients/dropout_1/div_grad/Shape_1Shapekeep_prob_placeholder*
T0*
out_type0
�
2gradients/dropout_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/div_grad/Shape$gradients/dropout_1/div_grad/Shape_1*
T0
�
$gradients/dropout_1/div_grad/RealDivRealDiv5gradients/dropout_1/mul_grad/tuple/control_dependencykeep_prob_placeholder*
T0
�
 gradients/dropout_1/div_grad/SumSum$gradients/dropout_1/div_grad/RealDiv2gradients/dropout_1/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
$gradients/dropout_1/div_grad/ReshapeReshape gradients/dropout_1/div_grad/Sum"gradients/dropout_1/div_grad/Shape*
T0*
Tshape0
6
 gradients/dropout_1/div_grad/NegNegTanh*
T0
s
&gradients/dropout_1/div_grad/RealDiv_1RealDiv gradients/dropout_1/div_grad/Negkeep_prob_placeholder*
T0
y
&gradients/dropout_1/div_grad/RealDiv_2RealDiv&gradients/dropout_1/div_grad/RealDiv_1keep_prob_placeholder*
T0
�
 gradients/dropout_1/div_grad/mulMul5gradients/dropout_1/mul_grad/tuple/control_dependency&gradients/dropout_1/div_grad/RealDiv_2*
T0
�
"gradients/dropout_1/div_grad/Sum_1Sum gradients/dropout_1/div_grad/mul4gradients/dropout_1/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
�
&gradients/dropout_1/div_grad/Reshape_1Reshape"gradients/dropout_1/div_grad/Sum_1$gradients/dropout_1/div_grad/Shape_1*
Tshape0*
T0
�
-gradients/dropout_1/div_grad/tuple/group_depsNoOp%^gradients/dropout_1/div_grad/Reshape'^gradients/dropout_1/div_grad/Reshape_1
�
5gradients/dropout_1/div_grad/tuple/control_dependencyIdentity$gradients/dropout_1/div_grad/Reshape.^gradients/dropout_1/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/div_grad/Reshape
�
7gradients/dropout_1/div_grad/tuple/control_dependency_1Identity&gradients/dropout_1/div_grad/Reshape_1.^gradients/dropout_1/div_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/div_grad/Reshape_1
n
gradients/Tanh_grad/TanhGradTanhGradTanh5gradients/dropout_1/div_grad/tuple/control_dependency*
T0
M
gradients/Add_grad/ShapeConst*
valueB"�   �  *
dtype0
I
gradients/Add_grad/Shape_1Const*
valueB:�*
dtype0
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0
�
gradients/Add_grad/SumSumgradients/Tanh_grad/TanhGrad(gradients/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0
�
gradients/Add_grad/Sum_1Sumgradients/Tanh_grad/TanhGrad*gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
�
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape
�
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1
�
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyActor/Weights/h1/read*
transpose_a( *
transpose_b(*
T0
�
gradients/MatMul_grad/MatMul_1MatMul random_shuffle_queue_DequeueMany+gradients/Add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
j
beta1_power/initial_valueConst*"
_class
loc:@Actor/Biases/b1*
valueB
 *fff?*
dtype0
{
beta1_power
VariableV2*
shape: *
shared_name *"
_class
loc:@Actor/Biases/b1*
dtype0*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1
V
beta1_power/readIdentitybeta1_power*
T0*"
_class
loc:@Actor/Biases/b1
j
beta2_power/initial_valueConst*"
_class
loc:@Actor/Biases/b1*
valueB
 *w�?*
dtype0
{
beta2_power
VariableV2*
shape: *
shared_name *"
_class
loc:@Actor/Biases/b1*
dtype0*
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*"
_class
loc:@Actor/Biases/b1*
validate_shape(*
use_locking(*
T0
V
beta2_power/readIdentitybeta2_power*
T0*"
_class
loc:@Actor/Biases/b1
�
'Actor/Weights/h1/Adam/Initializer/zerosConst*
valueB	&�*    *#
_class
loc:@Actor/Weights/h1*
dtype0
�
Actor/Weights/h1/Adam
VariableV2*#
_class
loc:@Actor/Weights/h1*
dtype0*
	container *
shape:	&�*
shared_name 
�
Actor/Weights/h1/Adam/AssignAssignActor/Weights/h1/Adam'Actor/Weights/h1/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h1*
validate_shape(
k
Actor/Weights/h1/Adam/readIdentityActor/Weights/h1/Adam*#
_class
loc:@Actor/Weights/h1*
T0
�
)Actor/Weights/h1/Adam_1/Initializer/zerosConst*
valueB	&�*    *#
_class
loc:@Actor/Weights/h1*
dtype0
�
Actor/Weights/h1/Adam_1
VariableV2*
dtype0*
	container *
shape:	&�*
shared_name *#
_class
loc:@Actor/Weights/h1
�
Actor/Weights/h1/Adam_1/AssignAssignActor/Weights/h1/Adam_1)Actor/Weights/h1/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h1*
validate_shape(
o
Actor/Weights/h1/Adam_1/readIdentityActor/Weights/h1/Adam_1*
T0*#
_class
loc:@Actor/Weights/h1
�
'Actor/Weights/h2/Adam/Initializer/zerosConst*
valueB
��*    *#
_class
loc:@Actor/Weights/h2*
dtype0
�
Actor/Weights/h2/Adam
VariableV2*
shared_name *#
_class
loc:@Actor/Weights/h2*
dtype0*
	container *
shape:
��
�
Actor/Weights/h2/Adam/AssignAssignActor/Weights/h2/Adam'Actor/Weights/h2/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
k
Actor/Weights/h2/Adam/readIdentityActor/Weights/h2/Adam*
T0*#
_class
loc:@Actor/Weights/h2
�
)Actor/Weights/h2/Adam_1/Initializer/zerosConst*
valueB
��*    *#
_class
loc:@Actor/Weights/h2*
dtype0
�
Actor/Weights/h2/Adam_1
VariableV2*
shape:
��*
shared_name *#
_class
loc:@Actor/Weights/h2*
dtype0*
	container 
�
Actor/Weights/h2/Adam_1/AssignAssignActor/Weights/h2/Adam_1)Actor/Weights/h2/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
o
Actor/Weights/h2/Adam_1/readIdentityActor/Weights/h2/Adam_1*
T0*#
_class
loc:@Actor/Weights/h2
�
'Actor/Weights/h3/Adam/Initializer/zerosConst*
dtype0*
valueB	�d*    *#
_class
loc:@Actor/Weights/h3
�
Actor/Weights/h3/Adam
VariableV2*
shared_name *#
_class
loc:@Actor/Weights/h3*
dtype0*
	container *
shape:	�d
�
Actor/Weights/h3/Adam/AssignAssignActor/Weights/h3/Adam'Actor/Weights/h3/Adam/Initializer/zeros*#
_class
loc:@Actor/Weights/h3*
validate_shape(*
use_locking(*
T0
k
Actor/Weights/h3/Adam/readIdentityActor/Weights/h3/Adam*
T0*#
_class
loc:@Actor/Weights/h3
�
)Actor/Weights/h3/Adam_1/Initializer/zerosConst*
valueB	�d*    *#
_class
loc:@Actor/Weights/h3*
dtype0
�
Actor/Weights/h3/Adam_1
VariableV2*
shared_name *#
_class
loc:@Actor/Weights/h3*
dtype0*
	container *
shape:	�d
�
Actor/Weights/h3/Adam_1/AssignAssignActor/Weights/h3/Adam_1)Actor/Weights/h3/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h3*
validate_shape(
o
Actor/Weights/h3/Adam_1/readIdentityActor/Weights/h3/Adam_1*#
_class
loc:@Actor/Weights/h3*
T0
�
(Actor/Weights/out/Adam/Initializer/zerosConst*
valueBd*    *$
_class
loc:@Actor/Weights/out*
dtype0
�
Actor/Weights/out/Adam
VariableV2*
shared_name *$
_class
loc:@Actor/Weights/out*
dtype0*
	container *
shape
:d
�
Actor/Weights/out/Adam/AssignAssignActor/Weights/out/Adam(Actor/Weights/out/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@Actor/Weights/out*
validate_shape(
n
Actor/Weights/out/Adam/readIdentityActor/Weights/out/Adam*
T0*$
_class
loc:@Actor/Weights/out
�
*Actor/Weights/out/Adam_1/Initializer/zerosConst*
valueBd*    *$
_class
loc:@Actor/Weights/out*
dtype0
�
Actor/Weights/out/Adam_1
VariableV2*$
_class
loc:@Actor/Weights/out*
dtype0*
	container *
shape
:d*
shared_name 
�
Actor/Weights/out/Adam_1/AssignAssignActor/Weights/out/Adam_1*Actor/Weights/out/Adam_1/Initializer/zeros*
T0*$
_class
loc:@Actor/Weights/out*
validate_shape(*
use_locking(
r
Actor/Weights/out/Adam_1/readIdentityActor/Weights/out/Adam_1*
T0*$
_class
loc:@Actor/Weights/out
|
&Actor/Biases/b1/Adam/Initializer/zerosConst*
valueB�*    *"
_class
loc:@Actor/Biases/b1*
dtype0
�
Actor/Biases/b1/Adam
VariableV2*"
_class
loc:@Actor/Biases/b1*
dtype0*
	container *
shape:�*
shared_name 
�
Actor/Biases/b1/Adam/AssignAssignActor/Biases/b1/Adam&Actor/Biases/b1/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
h
Actor/Biases/b1/Adam/readIdentityActor/Biases/b1/Adam*"
_class
loc:@Actor/Biases/b1*
T0
~
(Actor/Biases/b1/Adam_1/Initializer/zerosConst*
valueB�*    *"
_class
loc:@Actor/Biases/b1*
dtype0
�
Actor/Biases/b1/Adam_1
VariableV2*
dtype0*
	container *
shape:�*
shared_name *"
_class
loc:@Actor/Biases/b1
�
Actor/Biases/b1/Adam_1/AssignAssignActor/Biases/b1/Adam_1(Actor/Biases/b1/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
l
Actor/Biases/b1/Adam_1/readIdentityActor/Biases/b1/Adam_1*"
_class
loc:@Actor/Biases/b1*
T0
|
&Actor/Biases/b2/Adam/Initializer/zerosConst*
valueB�*    *"
_class
loc:@Actor/Biases/b2*
dtype0
�
Actor/Biases/b2/Adam
VariableV2*
	container *
shape:�*
shared_name *"
_class
loc:@Actor/Biases/b2*
dtype0
�
Actor/Biases/b2/Adam/AssignAssignActor/Biases/b2/Adam&Actor/Biases/b2/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b2
h
Actor/Biases/b2/Adam/readIdentityActor/Biases/b2/Adam*
T0*"
_class
loc:@Actor/Biases/b2
~
(Actor/Biases/b2/Adam_1/Initializer/zerosConst*
valueB�*    *"
_class
loc:@Actor/Biases/b2*
dtype0
�
Actor/Biases/b2/Adam_1
VariableV2*
	container *
shape:�*
shared_name *"
_class
loc:@Actor/Biases/b2*
dtype0
�
Actor/Biases/b2/Adam_1/AssignAssignActor/Biases/b2/Adam_1(Actor/Biases/b2/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b2*
validate_shape(
l
Actor/Biases/b2/Adam_1/readIdentityActor/Biases/b2/Adam_1*
T0*"
_class
loc:@Actor/Biases/b2
{
&Actor/Biases/b3/Adam/Initializer/zerosConst*
valueBd*    *"
_class
loc:@Actor/Biases/b3*
dtype0
�
Actor/Biases/b3/Adam
VariableV2*
shape:d*
shared_name *"
_class
loc:@Actor/Biases/b3*
dtype0*
	container 
�
Actor/Biases/b3/Adam/AssignAssignActor/Biases/b3/Adam&Actor/Biases/b3/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b3*
validate_shape(
h
Actor/Biases/b3/Adam/readIdentityActor/Biases/b3/Adam*
T0*"
_class
loc:@Actor/Biases/b3
}
(Actor/Biases/b3/Adam_1/Initializer/zerosConst*
valueBd*    *"
_class
loc:@Actor/Biases/b3*
dtype0
�
Actor/Biases/b3/Adam_1
VariableV2*
	container *
shape:d*
shared_name *"
_class
loc:@Actor/Biases/b3*
dtype0
�
Actor/Biases/b3/Adam_1/AssignAssignActor/Biases/b3/Adam_1(Actor/Biases/b3/Adam_1/Initializer/zeros*"
_class
loc:@Actor/Biases/b3*
validate_shape(*
use_locking(*
T0
l
Actor/Biases/b3/Adam_1/readIdentityActor/Biases/b3/Adam_1*
T0*"
_class
loc:@Actor/Biases/b3
}
'Actor/Biases/out/Adam/Initializer/zerosConst*
valueB*    *#
_class
loc:@Actor/Biases/out*
dtype0
�
Actor/Biases/out/Adam
VariableV2*
shared_name *#
_class
loc:@Actor/Biases/out*
dtype0*
	container *
shape:
�
Actor/Biases/out/Adam/AssignAssignActor/Biases/out/Adam'Actor/Biases/out/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*#
_class
loc:@Actor/Biases/out
k
Actor/Biases/out/Adam/readIdentityActor/Biases/out/Adam*
T0*#
_class
loc:@Actor/Biases/out

)Actor/Biases/out/Adam_1/Initializer/zerosConst*
valueB*    *#
_class
loc:@Actor/Biases/out*
dtype0
�
Actor/Biases/out/Adam_1
VariableV2*#
_class
loc:@Actor/Biases/out*
dtype0*
	container *
shape:*
shared_name 
�
Actor/Biases/out/Adam_1/AssignAssignActor/Biases/out/Adam_1)Actor/Biases/out/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@Actor/Biases/out*
validate_shape(
o
Actor/Biases/out/Adam_1/readIdentityActor/Biases/out/Adam_1*
T0*#
_class
loc:@Actor/Biases/out
7

Adam/beta1Const*
dtype0*
valueB
 *fff?
7

Adam/beta2Const*
valueB
 *w�?*
dtype0
9
Adam/epsilonConst*
valueB
 *w�+2*
dtype0
�
&Adam/update_Actor/Weights/h1/ApplyAdam	ApplyAdamActor/Weights/h1Actor/Weights/h1/AdamActor/Weights/h1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*#
_class
loc:@Actor/Weights/h1*
use_nesterov( *
use_locking( 
�
&Adam/update_Actor/Weights/h2/ApplyAdam	ApplyAdamActor/Weights/h2Actor/Weights/h2/AdamActor/Weights/h2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@Actor/Weights/h2*
use_nesterov( 
�
&Adam/update_Actor/Weights/h3/ApplyAdam	ApplyAdamActor/Weights/h3Actor/Weights/h3/AdamActor/Weights/h3/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@Actor/Weights/h3*
use_nesterov( 
�
'Adam/update_Actor/Weights/out/ApplyAdam	ApplyAdamActor/Weights/outActor/Weights/out/AdamActor/Weights/out/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_3_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*$
_class
loc:@Actor/Weights/out
�
%Adam/update_Actor/Biases/b1/ApplyAdam	ApplyAdamActor/Biases/b1Actor/Biases/b1/AdamActor/Biases/b1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@Actor/Biases/b1*
use_nesterov( 
�
%Adam/update_Actor/Biases/b2/ApplyAdam	ApplyAdamActor/Biases/b2Actor/Biases/b2/AdamActor/Biases/b2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_1_grad/tuple/control_dependency_1*"
_class
loc:@Actor/Biases/b2*
use_nesterov( *
use_locking( *
T0
�
%Adam/update_Actor/Biases/b3/ApplyAdam	ApplyAdamActor/Biases/b3Actor/Biases/b3/AdamActor/Biases/b3/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@Actor/Biases/b3*
use_nesterov( 
�
&Adam/update_Actor/Biases/out/ApplyAdam	ApplyAdamActor/Biases/outActor/Biases/out/AdamActor/Biases/out/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_3_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@Actor/Biases/out*
use_nesterov( 
�
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_Actor/Weights/h1/ApplyAdam'^Adam/update_Actor/Weights/h2/ApplyAdam'^Adam/update_Actor/Weights/h3/ApplyAdam(^Adam/update_Actor/Weights/out/ApplyAdam&^Adam/update_Actor/Biases/b1/ApplyAdam&^Adam/update_Actor/Biases/b2/ApplyAdam&^Adam/update_Actor/Biases/b3/ApplyAdam'^Adam/update_Actor/Biases/out/ApplyAdam*
T0*"
_class
loc:@Actor/Biases/b1
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_Actor/Weights/h1/ApplyAdam'^Adam/update_Actor/Weights/h2/ApplyAdam'^Adam/update_Actor/Weights/h3/ApplyAdam(^Adam/update_Actor/Weights/out/ApplyAdam&^Adam/update_Actor/Biases/b1/ApplyAdam&^Adam/update_Actor/Biases/b2/ApplyAdam&^Adam/update_Actor/Biases/b3/ApplyAdam'^Adam/update_Actor/Biases/out/ApplyAdam*
T0*"
_class
loc:@Actor/Biases/b1
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
�
Adam/updateNoOp'^Adam/update_Actor/Weights/h1/ApplyAdam'^Adam/update_Actor/Weights/h2/ApplyAdam'^Adam/update_Actor/Weights/h3/ApplyAdam(^Adam/update_Actor/Weights/out/ApplyAdam&^Adam/update_Actor/Biases/b1/ApplyAdam&^Adam/update_Actor/Biases/b2/ApplyAdam&^Adam/update_Actor/Biases/b3/ApplyAdam'^Adam/update_Actor/Biases/out/ApplyAdam^Adam/Assign^Adam/Assign_1
b

Adam/valueConst^Adam/update*
_class
loc:@global_step*
value	B :*
dtype0
f
Adam	AssignAddglobal_step
Adam/value*
T0*
_class
loc:@global_step*
use_locking( 
I
eval_data_inputPlaceholder*
shape:���������&*
dtype0
G
Placeholder_2Placeholder*
dtype0*
shape:���������
Q
Actor/Weights_1/h1/tagConst*#
valueB BActor/Weights_1/h1*
dtype0
^
Actor/Weights_1/h1HistogramSummaryActor/Weights_1/h1/tagActor/Weights/h1/read*
T0
Q
Actor/Weights_1/h2/tagConst*
dtype0*#
valueB BActor/Weights_1/h2
^
Actor/Weights_1/h2HistogramSummaryActor/Weights_1/h2/tagActor/Weights/h2/read*
T0
Q
Actor/Weights_1/h3/tagConst*#
valueB BActor/Weights_1/h3*
dtype0
^
Actor/Weights_1/h3HistogramSummaryActor/Weights_1/h3/tagActor/Weights/h3/read*
T0
S
Actor/Weights_1/out/tagConst*
dtype0*$
valueB BActor/Weights_1/out
a
Actor/Weights_1/outHistogramSummaryActor/Weights_1/out/tagActor/Weights/out/read*
T0
O
Actor/Biases_1/b1/tagConst*"
valueB BActor/Biases_1/b1*
dtype0
[
Actor/Biases_1/b1HistogramSummaryActor/Biases_1/b1/tagActor/Biases/b1/read*
T0
O
Actor/Biases_1/b2/tagConst*"
valueB BActor/Biases_1/b2*
dtype0
[
Actor/Biases_1/b2HistogramSummaryActor/Biases_1/b2/tagActor/Biases/b2/read*
T0
O
Actor/Biases_1/b3/tagConst*"
valueB BActor/Biases_1/b3*
dtype0
[
Actor/Biases_1/b3HistogramSummaryActor/Biases_1/b3/tagActor/Biases/b3/read*
T0
Q
Actor/Biases_1/out/tagConst*
dtype0*#
valueB BActor/Biases_1/out
^
Actor/Biases_1/outHistogramSummaryActor/Biases_1/out/tagActor/Biases/out/read*
T0
i
MatMul_4MatMuleval_data_inputActor/Weights/h1/read*
T0*
transpose_a( *
transpose_b( 
5
Add_4AddMatMul_4Actor/Biases/b1/read*
T0

Tanh_3TanhAdd_4*
T0
;
dropout_1_1/ShapeShapeTanh_3*
T0*
out_type0
K
dropout_1_1/random_uniform/minConst*
valueB
 *    *
dtype0
K
dropout_1_1/random_uniform/maxConst*
valueB
 *  �?*
dtype0
{
(dropout_1_1/random_uniform/RandomUniformRandomUniformdropout_1_1/Shape*
T0*
dtype0*
seed2 *

seed 
n
dropout_1_1/random_uniform/subSubdropout_1_1/random_uniform/maxdropout_1_1/random_uniform/min*
T0
x
dropout_1_1/random_uniform/mulMul(dropout_1_1/random_uniform/RandomUniformdropout_1_1/random_uniform/sub*
T0
j
dropout_1_1/random_uniformAdddropout_1_1/random_uniform/muldropout_1_1/random_uniform/min*
T0
R
dropout_1_1/addAddkeep_prob_placeholderdropout_1_1/random_uniform*
T0
4
dropout_1_1/FloorFloordropout_1_1/add*
T0
B
dropout_1_1/divRealDivTanh_3keep_prob_placeholder*
T0
C
dropout_1_1/mulMuldropout_1_1/divdropout_1_1/Floor*
T0
i
MatMul_5MatMuldropout_1_1/mulActor/Weights/h2/read*
T0*
transpose_a( *
transpose_b( 
5
Add_5AddMatMul_5Actor/Biases/b2/read*
T0

Tanh_4TanhAdd_5*
T0
`
MatMul_6MatMulTanh_4Actor/Weights/h3/read*
T0*
transpose_a( *
transpose_b( 
5
Add_6AddMatMul_6Actor/Biases/b3/read*
T0

Tanh_5TanhAdd_6*
T0
a
MatMul_7MatMulTanh_5Actor/Weights/out/read*
T0*
transpose_a( *
transpose_b( 
6
Add_7AddMatMul_7Actor/Biases/out/read*
T0
+
normalized_output_1TanhAdd_7*
T0
<
Const_3Const*
valueB"��?��?*
dtype0
<
Const_4Const*
valueB"33�>    *
dtype0
3
Mul_1Mulnormalized_output_1Const_3*
T0
/
eval_predictionAddMul_1Const_4*
T0
?
Placeholder_3Placeholder*
dtype0*
shape:	�
3
sub_2SubPlaceholder_3Placeholder_2*
T0

Abs_2Abssub_2*
T0
B
Mean_2/reduction_indicesConst*
value	B : *
dtype0
U
Mean_2MeanAbs_2Mean_2/reduction_indices*
	keep_dims( *

Tidx0*
T0
3
sub_3SubPlaceholder_3Placeholder_2*
T0

Abs_3Abssub_3*
T0
<
Const_5Const*
valueB"       *
dtype0
D
Mean_3MeanAbs_3Const_5*
	keep_dims( *

Tidx0*
T0
D

data_inputPlaceholder*
dtype0*
shape:���������&
G
Placeholder_4Placeholder*
dtype0*
shape:���������
Q
Actor/Weights_2/h1/tagConst*#
valueB BActor/Weights_2/h1*
dtype0
^
Actor/Weights_2/h1HistogramSummaryActor/Weights_2/h1/tagActor/Weights/h1/read*
T0
Q
Actor/Weights_2/h2/tagConst*#
valueB BActor/Weights_2/h2*
dtype0
^
Actor/Weights_2/h2HistogramSummaryActor/Weights_2/h2/tagActor/Weights/h2/read*
T0
Q
Actor/Weights_2/h3/tagConst*
dtype0*#
valueB BActor/Weights_2/h3
^
Actor/Weights_2/h3HistogramSummaryActor/Weights_2/h3/tagActor/Weights/h3/read*
T0
S
Actor/Weights_2/out/tagConst*$
valueB BActor/Weights_2/out*
dtype0
a
Actor/Weights_2/outHistogramSummaryActor/Weights_2/out/tagActor/Weights/out/read*
T0
O
Actor/Biases_2/b1/tagConst*"
valueB BActor/Biases_2/b1*
dtype0
[
Actor/Biases_2/b1HistogramSummaryActor/Biases_2/b1/tagActor/Biases/b1/read*
T0
O
Actor/Biases_2/b2/tagConst*"
valueB BActor/Biases_2/b2*
dtype0
[
Actor/Biases_2/b2HistogramSummaryActor/Biases_2/b2/tagActor/Biases/b2/read*
T0
O
Actor/Biases_2/b3/tagConst*"
valueB BActor/Biases_2/b3*
dtype0
[
Actor/Biases_2/b3HistogramSummaryActor/Biases_2/b3/tagActor/Biases/b3/read*
T0
Q
Actor/Biases_2/out/tagConst*#
valueB BActor/Biases_2/out*
dtype0
^
Actor/Biases_2/outHistogramSummaryActor/Biases_2/out/tagActor/Biases/out/read*
T0
d
MatMul_8MatMul
data_inputActor/Weights/h1/read*
transpose_a( *
transpose_b( *
T0
5
Add_8AddMatMul_8Actor/Biases/b1/read*
T0

Tanh_6TanhAdd_8*
T0
;
dropout_1_2/ShapeShapeTanh_6*
T0*
out_type0
K
dropout_1_2/random_uniform/minConst*
valueB
 *    *
dtype0
K
dropout_1_2/random_uniform/maxConst*
valueB
 *  �?*
dtype0
{
(dropout_1_2/random_uniform/RandomUniformRandomUniformdropout_1_2/Shape*

seed *
T0*
dtype0*
seed2 
n
dropout_1_2/random_uniform/subSubdropout_1_2/random_uniform/maxdropout_1_2/random_uniform/min*
T0
x
dropout_1_2/random_uniform/mulMul(dropout_1_2/random_uniform/RandomUniformdropout_1_2/random_uniform/sub*
T0
j
dropout_1_2/random_uniformAdddropout_1_2/random_uniform/muldropout_1_2/random_uniform/min*
T0
R
dropout_1_2/addAddkeep_prob_placeholderdropout_1_2/random_uniform*
T0
4
dropout_1_2/FloorFloordropout_1_2/add*
T0
B
dropout_1_2/divRealDivTanh_6keep_prob_placeholder*
T0
C
dropout_1_2/mulMuldropout_1_2/divdropout_1_2/Floor*
T0
i
MatMul_9MatMuldropout_1_2/mulActor/Weights/h2/read*
T0*
transpose_a( *
transpose_b( 
5
Add_9AddMatMul_9Actor/Biases/b2/read*
T0

Tanh_7TanhAdd_9*
T0
a
	MatMul_10MatMulTanh_7Actor/Weights/h3/read*
transpose_a( *
transpose_b( *
T0
7
Add_10Add	MatMul_10Actor/Biases/b3/read*
T0

Tanh_8TanhAdd_10*
T0
b
	MatMul_11MatMulTanh_8Actor/Weights/out/read*
transpose_a( *
transpose_b( *
T0
8
Add_11Add	MatMul_11Actor/Biases/out/read*
T0
,
normalized_output_2TanhAdd_11*
T0
<
Const_6Const*
valueB"��?��?*
dtype0
<
Const_7Const*
valueB"33�>    *
dtype0
3
Mul_2Mulnormalized_output_2Const_6*
T0
/
model_inferenceAddMul_2Const_7*
T0
6
	loss/tagsConst*
valueB
 Bloss*
dtype0
1
lossScalarSummary	loss/tagsMean_1*
T0
A
strided_slice/stackConst*
dtype0*
valueB: 
C
strided_slice/stack_1Const*
valueB:*
dtype0
C
strided_slice/stack_2Const*
dtype0*
valueB:
�
strided_sliceStridedSliceMeanstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
T0*
Index0*
shrink_axis_mask
H
loss_linear_x/tagsConst*
valueB Bloss_linear_x*
dtype0
J
loss_linear_xScalarSummaryloss_linear_x/tagsstrided_slice*
T0
C
strided_slice_1/stackConst*
valueB:*
dtype0
E
strided_slice_1/stack_1Const*
valueB:*
dtype0
E
strided_slice_1/stack_2Const*
valueB:*
dtype0
�
strided_slice_1StridedSliceMeanstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
end_mask *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
N
loss_angular_yaw/tagsConst*!
valueB Bloss_angular_yaw*
dtype0
R
loss_angular_yawScalarSummaryloss_angular_yaw/tagsstrided_slice_1*
T0
H
learning_rate/tagsConst*
valueB Blearning_rate*
dtype0
M
learning_rateScalarSummarylearning_rate/tagsExponentialDecay*
T0
:
loss_1/tagsConst*
valueB Bloss_1*
dtype0
5
loss_1ScalarSummaryloss_1/tagsMean_3*
T0
C
strided_slice_2/stackConst*
valueB: *
dtype0
E
strided_slice_2/stack_1Const*
valueB:*
dtype0
E
strided_slice_2/stack_2Const*
valueB:*
dtype0
�
strided_slice_2StridedSliceMean_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
L
loss_linear_x_1/tagsConst* 
valueB Bloss_linear_x_1*
dtype0
P
loss_linear_x_1ScalarSummaryloss_linear_x_1/tagsstrided_slice_2*
T0
C
strided_slice_3/stackConst*
valueB:*
dtype0
E
strided_slice_3/stack_1Const*
valueB:*
dtype0
E
strided_slice_3/stack_2Const*
valueB:*
dtype0
�
strided_slice_3StridedSliceMean_2strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
R
loss_angular_yaw_1/tagsConst*#
valueB Bloss_angular_yaw_1*
dtype0
V
loss_angular_yaw_1ScalarSummaryloss_angular_yaw_1/tagsstrided_slice_3*
T0
a
Merge/MergeSummaryMergeSummarylossloss_linear_xloss_angular_yawlearning_rate*
N
Z
Merge_1/MergeSummaryMergeSummaryloss_1loss_linear_x_1loss_angular_yaw_1*
N
8

save/ConstConst*
valueB Bmodel*
dtype0
�
save/SaveV2/tensor_namesConst*�
value�B�BActor/Biases/b1BActor/Biases/b1/AdamBActor/Biases/b1/Adam_1BActor/Biases/b2BActor/Biases/b2/AdamBActor/Biases/b2/Adam_1BActor/Biases/b3BActor/Biases/b3/AdamBActor/Biases/b3/Adam_1BActor/Biases/outBActor/Biases/out/AdamBActor/Biases/out/Adam_1BActor/Weights/h1BActor/Weights/h1/AdamBActor/Weights/h1/Adam_1BActor/Weights/h2BActor/Weights/h2/AdamBActor/Weights/h2/Adam_1BActor/Weights/h3BActor/Weights/h3/AdamBActor/Weights/h3/Adam_1BActor/Weights/outBActor/Weights/out/AdamBActor/Weights/out/Adam_1Bbeta1_powerBbeta2_powerBglobal_step*
dtype0
}
save/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesActor/Biases/b1Actor/Biases/b1/AdamActor/Biases/b1/Adam_1Actor/Biases/b2Actor/Biases/b2/AdamActor/Biases/b2/Adam_1Actor/Biases/b3Actor/Biases/b3/AdamActor/Biases/b3/Adam_1Actor/Biases/outActor/Biases/out/AdamActor/Biases/out/Adam_1Actor/Weights/h1Actor/Weights/h1/AdamActor/Weights/h1/Adam_1Actor/Weights/h2Actor/Weights/h2/AdamActor/Weights/h2/Adam_1Actor/Weights/h3Actor/Weights/h3/AdamActor/Weights/h3/Adam_1Actor/Weights/outActor/Weights/out/AdamActor/Weights/out/Adam_1beta1_powerbeta2_powerglobal_step*)
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
W
save/RestoreV2/tensor_namesConst*$
valueBBActor/Biases/b1*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignActor/Biases/b1save/RestoreV2*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
^
save/RestoreV2_1/tensor_namesConst*)
value BBActor/Biases/b1/Adam*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1AssignActor/Biases/b1/Adamsave/RestoreV2_1*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
`
save/RestoreV2_2/tensor_namesConst*+
value"B BActor/Biases/b1/Adam_1*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
�
save/Assign_2AssignActor/Biases/b1/Adam_1save/RestoreV2_2*
validate_shape(*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1
Y
save/RestoreV2_3/tensor_namesConst*
dtype0*$
valueBBActor/Biases/b2
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
�
save/Assign_3AssignActor/Biases/b2save/RestoreV2_3*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b2*
validate_shape(
^
save/RestoreV2_4/tensor_namesConst*)
value BBActor/Biases/b2/Adam*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
�
save/Assign_4AssignActor/Biases/b2/Adamsave/RestoreV2_4*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b2*
validate_shape(
`
save/RestoreV2_5/tensor_namesConst*+
value"B BActor/Biases/b2/Adam_1*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
�
save/Assign_5AssignActor/Biases/b2/Adam_1save/RestoreV2_5*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b2*
validate_shape(
Y
save/RestoreV2_6/tensor_namesConst*$
valueBBActor/Biases/b3*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
�
save/Assign_6AssignActor/Biases/b3save/RestoreV2_6*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b3*
validate_shape(
^
save/RestoreV2_7/tensor_namesConst*)
value BBActor/Biases/b3/Adam*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
�
save/Assign_7AssignActor/Biases/b3/Adamsave/RestoreV2_7*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b3*
validate_shape(
`
save/RestoreV2_8/tensor_namesConst*+
value"B BActor/Biases/b3/Adam_1*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
�
save/Assign_8AssignActor/Biases/b3/Adam_1save/RestoreV2_8*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b3*
validate_shape(
Z
save/RestoreV2_9/tensor_namesConst*%
valueBBActor/Biases/out*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
�
save/Assign_9AssignActor/Biases/outsave/RestoreV2_9*
T0*#
_class
loc:@Actor/Biases/out*
validate_shape(*
use_locking(
`
save/RestoreV2_10/tensor_namesConst**
value!BBActor/Biases/out/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
�
save/Assign_10AssignActor/Biases/out/Adamsave/RestoreV2_10*
use_locking(*
T0*#
_class
loc:@Actor/Biases/out*
validate_shape(
b
save/RestoreV2_11/tensor_namesConst*,
value#B!BActor/Biases/out/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
�
save/Assign_11AssignActor/Biases/out/Adam_1save/RestoreV2_11*
use_locking(*
T0*#
_class
loc:@Actor/Biases/out*
validate_shape(
[
save/RestoreV2_12/tensor_namesConst*%
valueBBActor/Weights/h1*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2
�
save/Assign_12AssignActor/Weights/h1save/RestoreV2_12*#
_class
loc:@Actor/Weights/h1*
validate_shape(*
use_locking(*
T0
`
save/RestoreV2_13/tensor_namesConst**
value!BBActor/Weights/h1/Adam*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2
�
save/Assign_13AssignActor/Weights/h1/Adamsave/RestoreV2_13*
validate_shape(*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h1
b
save/RestoreV2_14/tensor_namesConst*,
value#B!BActor/Weights/h1/Adam_1*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
�
save/Assign_14AssignActor/Weights/h1/Adam_1save/RestoreV2_14*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h1*
validate_shape(
[
save/RestoreV2_15/tensor_namesConst*%
valueBBActor/Weights/h2*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2
�
save/Assign_15AssignActor/Weights/h2save/RestoreV2_15*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
`
save/RestoreV2_16/tensor_namesConst**
value!BBActor/Weights/h2/Adam*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2
�
save/Assign_16AssignActor/Weights/h2/Adamsave/RestoreV2_16*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
b
save/RestoreV2_17/tensor_namesConst*,
value#B!BActor/Weights/h2/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2
�
save/Assign_17AssignActor/Weights/h2/Adam_1save/RestoreV2_17*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h2*
validate_shape(
[
save/RestoreV2_18/tensor_namesConst*%
valueBBActor/Weights/h3*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2
�
save/Assign_18AssignActor/Weights/h3save/RestoreV2_18*#
_class
loc:@Actor/Weights/h3*
validate_shape(*
use_locking(*
T0
`
save/RestoreV2_19/tensor_namesConst*
dtype0**
value!BBActor/Weights/h3/Adam
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2
�
save/Assign_19AssignActor/Weights/h3/Adamsave/RestoreV2_19*
T0*#
_class
loc:@Actor/Weights/h3*
validate_shape(*
use_locking(
b
save/RestoreV2_20/tensor_namesConst*,
value#B!BActor/Weights/h3/Adam_1*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2
�
save/Assign_20AssignActor/Weights/h3/Adam_1save/RestoreV2_20*
use_locking(*
T0*#
_class
loc:@Actor/Weights/h3*
validate_shape(
\
save/RestoreV2_21/tensor_namesConst*&
valueBBActor/Weights/out*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2
�
save/Assign_21AssignActor/Weights/outsave/RestoreV2_21*
use_locking(*
T0*$
_class
loc:@Actor/Weights/out*
validate_shape(
a
save/RestoreV2_22/tensor_namesConst*+
value"B BActor/Weights/out/Adam*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2
�
save/Assign_22AssignActor/Weights/out/Adamsave/RestoreV2_22*
validate_shape(*
use_locking(*
T0*$
_class
loc:@Actor/Weights/out
c
save/RestoreV2_23/tensor_namesConst*-
value$B"BActor/Weights/out/Adam_1*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2
�
save/Assign_23AssignActor/Weights/out/Adam_1save/RestoreV2_23*
use_locking(*
T0*$
_class
loc:@Actor/Weights/out*
validate_shape(
V
save/RestoreV2_24/tensor_namesConst* 
valueBBbeta1_power*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2
�
save/Assign_24Assignbeta1_powersave/RestoreV2_24*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
V
save/RestoreV2_25/tensor_namesConst* 
valueBBbeta2_power*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2
�
save/Assign_25Assignbeta2_powersave/RestoreV2_25*
use_locking(*
T0*"
_class
loc:@Actor/Biases/b1*
validate_shape(
V
save/RestoreV2_26/tensor_namesConst*
dtype0* 
valueBBglobal_step
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2
�
save/Assign_26Assignglobal_stepsave/RestoreV2_26*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26
�
initNoOp^global_step/Assign^Actor/Weights/h1/Assign^Actor/Weights/h2/Assign^Actor/Weights/h3/Assign^Actor/Weights/out/Assign^Actor/Biases/b1/Assign^Actor/Biases/b2/Assign^Actor/Biases/b3/Assign^Actor/Biases/out/Assign^beta1_power/Assign^beta2_power/Assign^Actor/Weights/h1/Adam/Assign^Actor/Weights/h1/Adam_1/Assign^Actor/Weights/h2/Adam/Assign^Actor/Weights/h2/Adam_1/Assign^Actor/Weights/h3/Adam/Assign^Actor/Weights/h3/Adam_1/Assign^Actor/Weights/out/Adam/Assign ^Actor/Weights/out/Adam_1/Assign^Actor/Biases/b1/Adam/Assign^Actor/Biases/b1/Adam_1/Assign^Actor/Biases/b2/Adam/Assign^Actor/Biases/b2/Adam_1/Assign^Actor/Biases/b3/Adam/Assign^Actor/Biases/b3/Adam_1/Assign^Actor/Biases/out/Adam/Assign^Actor/Biases/out/Adam_1/Assign"