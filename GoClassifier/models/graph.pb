node {
  name: "Input_input"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 7
        }
        dim {
          size: 19
        }
        dim {
          size: 19
        }
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\000\007\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.058140188455581665
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.058140188455581665
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Input/kernel/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Input/kernel/Initializer/random_uniform/max"
  input: "Input/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Input/kernel/Initializer/random_uniform/RandomUniform"
  input: "Input/kernel/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Input/kernel/Initializer/random_uniform/mul"
  input: "Input/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 7
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/kernel/Assign"
  op: "Assign"
  input: "Input/kernel"
  input: "Input/kernel/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/kernel/read"
  op: "Identity"
  input: "Input/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "Input/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Input/bias/Initializer/zeros"
  op: "Fill"
  input: "Input/bias/Initializer/zeros/shape_as_tensor"
  input: "Input/bias/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Input/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/bias/Assign"
  op: "Assign"
  input: "Input/bias"
  input: "Input/bias/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/bias/read"
  op: "Identity"
  input: "Input/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "Input/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Input/Conv2D"
  op: "Conv2D"
  input: "Input_input"
  input: "Input/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NCHW"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "Input/BiasAdd"
  op: "BiasAdd"
  input: "Input/Conv2D"
  input: "Input/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NCHW"
    }
  }
}
node {
  name: "flatten/Shape"
  op: "Shape"
  input: "Input/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "flatten/strided_slice/stack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "flatten/strided_slice/stack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "flatten/strided_slice/stack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "flatten/strided_slice"
  op: "StridedSlice"
  input: "flatten/Shape"
  input: "flatten/strided_slice/stack"
  input: "flatten/strided_slice/stack_1"
  input: "flatten/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "flatten/Reshape/shape/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "flatten/Reshape/shape"
  op: "Pack"
  input: "flatten/strided_slice"
  input: "flatten/Reshape/shape/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "flatten/Reshape"
  op: "Reshape"
  input: "Input/BiasAdd"
  input: "flatten/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@8\000\000i\001\000\000"
      }
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.020161263644695282
      }
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.020161263644695282
      }
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Output/kernel/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Output/kernel/Initializer/random_uniform/max"
  input: "Output/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Output/kernel/Initializer/random_uniform/RandomUniform"
  input: "Output/kernel/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Output/kernel/Initializer/random_uniform/mul"
  input: "Output/kernel/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 14400
        }
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/kernel/Assign"
  op: "Assign"
  input: "Output/kernel"
  input: "Output/kernel/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/kernel/read"
  op: "Identity"
  input: "Output/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 361
      }
    }
  }
}
node {
  name: "Output/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Output/bias/Initializer/zeros"
  op: "Fill"
  input: "Output/bias/Initializer/zeros/shape_as_tensor"
  input: "Output/bias/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/bias/Assign"
  op: "Assign"
  input: "Output/bias"
  input: "Output/bias/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/bias/read"
  op: "Identity"
  input: "Output/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
}
node {
  name: "Output/MatMul"
  op: "MatMul"
  input: "flatten/Reshape"
  input: "Output/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Output/BiasAdd"
  op: "BiasAdd"
  input: "Output/MatMul"
  input: "Output/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "Output/Softmax"
  op: "Softmax"
  input: "Output/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "TFOptimizer/iterations/Initializer/initial_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT64
        tensor_shape {
        }
        int64_val: 0
      }
    }
  }
}
node {
  name: "TFOptimizer/iterations"
  op: "VarHandleOp"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: "TFOptimizer/iterations"
    }
  }
}
node {
  name: "TFOptimizer/iterations/IsInitialized/VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "TFOptimizer/iterations"
}
node {
  name: "TFOptimizer/iterations/Assign"
  op: "AssignVariableOp"
  input: "TFOptimizer/iterations"
  input: "TFOptimizer/iterations/Initializer/initial_value"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@TFOptimizer/iterations"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "TFOptimizer/iterations/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "TFOptimizer/iterations"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@TFOptimizer/iterations"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Output_target"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "Output_sample_weights/input"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Output_sample_weights"
  op: "PlaceholderWithDefault"
  input: "Output_sample_weights/input"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
      }
    }
  }
}
node {
  name: "loss/Output_loss/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "loss/Output_loss/Sum"
  op: "Sum"
  input: "Output/Softmax"
  input: "loss/Output_loss/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "loss/Output_loss/truediv"
  op: "RealDiv"
  input: "Output/Softmax"
  input: "loss/Output_loss/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0000000116860974e-07
      }
    }
  }
}
node {
  name: "loss/Output_loss/sub/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "loss/Output_loss/sub"
  op: "Sub"
  input: "loss/Output_loss/sub/x"
  input: "loss/Output_loss/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/clip_by_value/Minimum"
  op: "Minimum"
  input: "loss/Output_loss/truediv"
  input: "loss/Output_loss/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/clip_by_value"
  op: "Maximum"
  input: "loss/Output_loss/clip_by_value/Minimum"
  input: "loss/Output_loss/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Log"
  op: "Log"
  input: "loss/Output_loss/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/mul"
  op: "Mul"
  input: "Output_target"
  input: "loss/Output_loss/Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Sum_1/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "loss/Output_loss/Sum_1"
  op: "Sum"
  input: "loss/Output_loss/mul"
  input: "loss/Output_loss/Sum_1/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/Output_loss/Neg"
  op: "Neg"
  input: "loss/Output_loss/Sum_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Mean/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "loss/Output_loss/Mean"
  op: "Mean"
  input: "loss/Output_loss/Neg"
  input: "loss/Output_loss/Mean/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/Output_loss/mul_1"
  op: "Mul"
  input: "loss/Output_loss/Mean"
  input: "Output_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/NotEqual/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "loss/Output_loss/NotEqual"
  op: "NotEqual"
  input: "Output_sample_weights"
  input: "loss/Output_loss/NotEqual/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Cast"
  op: "Cast"
  input: "loss/Output_loss/NotEqual"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "loss/Output_loss/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "loss/Output_loss/Mean_1"
  op: "Mean"
  input: "loss/Output_loss/Cast"
  input: "loss/Output_loss/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/Output_loss/truediv_1"
  op: "RealDiv"
  input: "loss/Output_loss/mul_1"
  input: "loss/Output_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "loss/Output_loss/Const_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "loss/Output_loss/Mean_2"
  op: "Mean"
  input: "loss/Output_loss/truediv_1"
  input: "loss/Output_loss/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "loss/mul/x"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "loss/mul"
  op: "Mul"
  input: "loss/mul/x"
  input: "loss/Output_loss/Mean_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "metrics/acc/ArgMax/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "metrics/acc/ArgMax"
  op: "ArgMax"
  input: "Output_target"
  input: "metrics/acc/ArgMax/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "metrics/acc/ArgMax_1/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "metrics/acc/ArgMax_1"
  op: "ArgMax"
  input: "Output/Softmax"
  input: "metrics/acc/ArgMax_1/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "output_type"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "metrics/acc/Equal"
  op: "Equal"
  input: "metrics/acc/ArgMax"
  input: "metrics/acc/ArgMax_1"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "metrics/acc/Cast"
  op: "Cast"
  input: "metrics/acc/Equal"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "metrics/acc/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "metrics/acc/Mean"
  op: "Mean"
  input: "metrics/acc/Cast"
  input: "metrics/acc/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "group_deps"
  op: "NoOp"
  input: "^Output/Softmax"
}
node {
  name: "IsVariableInitialized"
  op: "IsVariableInitialized"
  input: "Input/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_1"
  op: "IsVariableInitialized"
  input: "Input/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_2"
  op: "IsVariableInitialized"
  input: "Output/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_3"
  op: "IsVariableInitialized"
  input: "Output/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "TFOptimizer/iterations"
}
node {
  name: "init"
  op: "NoOp"
  input: "^Input/kernel/Assign"
  input: "^Input/bias/Assign"
  input: "^Output/kernel/Assign"
  input: "^Output/bias/Assign"
  input: "^TFOptimizer/iterations/Assign"
}
node {
  name: "training/TFOptimizer/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT64
        tensor_shape {
        }
        int64_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/AssignAddVariableOp"
  op: "AssignAddVariableOp"
  input: "TFOptimizer/iterations"
  input: "training/TFOptimizer/Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/TFOptimizer/ReadVariableOp"
  op: "ReadVariableOp"
  input: "TFOptimizer/iterations"
  input: "^training/TFOptimizer/AssignAddVariableOp"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/grad_ys_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Fill"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape"
  input: "training/TFOptimizer/gradients/grad_ys_0"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Fill"
  input: "loss/Output_loss/Mean_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/mul_grad/Mul_1"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Fill"
  input: "loss/mul/x"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/mul_grad/Mul"
  input: "^training/TFOptimizer/gradients/loss/mul_grad/Mul_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/mul_grad/Mul"
  input: "^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/mul_grad/Mul_1"
  input: "^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Tile"
  op: "Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape_1"
  op: "Shape"
  input: "loss/Output_loss/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Prod"
  op: "Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Prod_1"
  op: "Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Shape_2"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Maximum/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Maximum"
  op: "Maximum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Prod_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/floordiv"
  op: "FloorDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Cast"
  op: "Cast"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/floordiv"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/truediv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/truediv"
  input: "loss/Output_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Neg"
  op: "Neg"
  input: "loss/Output_loss/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Neg"
  input: "loss/Output_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv_1"
  input: "loss/Output_loss/Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_2_grad/truediv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/Mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape_1"
  op: "Shape"
  input: "Output_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/control_dependency"
  input: "Output_sample_weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Mul_1"
  op: "Mul"
  input: "loss/Output_loss/Mean"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_1_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Mul_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/Neg"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/add"
  op: "Add"
  input: "loss/Output_loss/Mean/reduction_indices"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/mod"
  op: "FloorMod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/add"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range"
  op: "Range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range/start"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Size"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Fill"
  op: "Fill"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/mod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum"
  op: "Maximum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/floordiv"
  op: "FloorDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Tile"
  op: "Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_2"
  op: "Shape"
  input: "loss/Output_loss/Neg"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_3"
  op: "Shape"
  input: "loss/Output_loss/Mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Prod"
  op: "Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_2"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Prod_1"
  op: "Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Shape_3"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Const_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum_1"
  op: "Maximum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Prod_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/floordiv_1"
  op: "FloorDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Prod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Maximum_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Cast"
  op: "Cast"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/floordiv_1"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/truediv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/Cast"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Neg_grad/Neg"
  op: "Neg"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Mean_grad/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/add"
  op: "Add"
  input: "loss/Output_loss/Sum_1/reduction_indices"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/mod"
  op: "FloorMod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/add"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range"
  op: "Range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range/start"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Size"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Fill"
  op: "Fill"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/mod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Maximum"
  op: "Maximum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/floordiv"
  op: "FloorDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Neg_grad/Neg"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Tile"
  op: "Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape"
  op: "Shape"
  input: "Output_target"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape_1"
  op: "Shape"
  input: "loss/Output_loss/Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Tile"
  input: "loss/Output_loss/Log"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Mul_1"
  op: "Mul"
  input: "Output_target"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_1_grad/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/Reciprocal"
  op: "Reciprocal"
  input: "loss/Output_loss/clip_by_value"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/mul_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/Reciprocal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/clip_by_value/Minimum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape_2"
  op: "Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/zeros"
  op: "Fill"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape_2"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/GreaterEqual"
  op: "GreaterEqual"
  input: "loss/Output_loss/clip_by_value/Minimum"
  input: "loss/Output_loss/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Select"
  op: "Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/GreaterEqual"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Select_1"
  op: "Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/GreaterEqual"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/zeros"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Log_grad/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Select_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape"
  op: "Shape"
  input: "loss/Output_loss/truediv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape_2"
  op: "Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/zeros"
  op: "Fill"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape_2"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/LessEqual"
  op: "LessEqual"
  input: "loss/Output_loss/truediv"
  input: "loss/Output_loss/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Select"
  op: "Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/LessEqual"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Select_1"
  op: "Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/LessEqual"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/zeros"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Select"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Select_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape"
  op: "Shape"
  input: "Output/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape_1"
  op: "Shape"
  input: "loss/Output_loss/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/control_dependency"
  input: "loss/Output_loss/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Neg"
  op: "Neg"
  input: "Output/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Neg"
  input: "loss/Output_loss/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv_1"
  input: "loss/Output_loss/Sum"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/clip_by_value/Minimum_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/mul"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Sum_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
  op: "Shape"
  input: "Output/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Size"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/add"
  op: "Add"
  input: "loss/Output_loss/Sum/reduction_indices"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/mod"
  op: "FloorMod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/add"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Size"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range"
  op: "Range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range/start"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Size"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Fill/value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Fill"
  op: "Fill"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Fill/value"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/DynamicStitch"
  op: "DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/range"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/mod"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Fill"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Maximum/y"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Maximum"
  op: "Maximum"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/DynamicStitch"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Maximum/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/floordiv"
  op: "FloorDiv"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Maximum"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Shape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/DynamicStitch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Tile"
  op: "Tile"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Reshape"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/floordiv"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN"
  op: "AddN"
  input: "training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/loss/Output_loss/Sum_grad/Tile"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/loss/Output_loss/truediv_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/AddN"
  input: "Output/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/Sum/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/mul"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/Sum/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/Sum"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/sub"
  op: "Sub"
  input: "training/TFOptimizer/gradients/AddN"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/Softmax_grad/mul_1"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/sub"
  input: "Output/Softmax"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Output/Softmax_grad/mul_1"
  input: "^training/TFOptimizer/gradients/Output/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Output/Softmax_grad/mul_1"
  input: "^training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Output/Softmax_grad/mul_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Output/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Output/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/MatMul_grad/MatMul"
  op: "MatMul"
  input: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/control_dependency"
  input: "Output/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "flatten/Reshape"
  input: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Output/MatMul_grad/MatMul"
  input: "^training/TFOptimizer/gradients/Output/MatMul_grad/MatMul_1"
}
node {
  name: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Output/MatMul_grad/MatMul"
  input: "^training/TFOptimizer/gradients/Output/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Output/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Output/MatMul_grad/MatMul_1"
  input: "^training/TFOptimizer/gradients/Output/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Output/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/flatten/Reshape_grad/Shape"
  op: "Shape"
  input: "Input/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/flatten/Reshape_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NCHW"
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Input_input"
  input: "Input/kernel/read"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\000\007\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Input/Conv2D_grad/ShapeN"
  input: "Input/kernel/read"
  input: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NCHW"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Input_input"
  input: "training/TFOptimizer/gradients/Input/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NCHW"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/gradients/Input/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/beta1_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "training/TFOptimizer/beta1_power"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "training/TFOptimizer/beta1_power/Assign"
  op: "Assign"
  input: "training/TFOptimizer/beta1_power"
  input: "training/TFOptimizer/beta1_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/beta1_power/read"
  op: "Identity"
  input: "training/TFOptimizer/beta1_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/beta2_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "training/TFOptimizer/beta2_power"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "training/TFOptimizer/beta2_power/Assign"
  op: "Assign"
  input: "training/TFOptimizer/beta2_power"
  input: "training/TFOptimizer/beta2_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/beta2_power/read"
  op: "Identity"
  input: "training/TFOptimizer/beta2_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "Input/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\000\007\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Input/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Input/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Input/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Input/kernel/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Input/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 7
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/kernel/Adam/Assign"
  op: "Assign"
  input: "Input/kernel/Adam"
  input: "Input/kernel/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/kernel/Adam/read"
  op: "Identity"
  input: "Input/kernel/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\000\007\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Input/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Input/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Input/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Input/kernel/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Input/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 7
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Input/kernel/Adam_1"
  input: "Input/kernel/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/kernel/Adam_1/read"
  op: "Identity"
  input: "Input/kernel/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
}
node {
  name: "Input/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "Input/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Input/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Input/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Input/bias/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Input/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/bias/Adam/Assign"
  op: "Assign"
  input: "Input/bias/Adam"
  input: "Input/bias/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/bias/Adam/read"
  op: "Identity"
  input: "Input/bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "Input/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 64
      }
    }
  }
}
node {
  name: "Input/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Input/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Input/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Input/bias/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Input/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Input/bias/Adam_1/Assign"
  op: "Assign"
  input: "Input/bias/Adam_1"
  input: "Input/bias/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Input/bias/Adam_1/read"
  op: "Identity"
  input: "Input/bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "Output/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@8\000\000i\001\000\000"
      }
    }
  }
}
node {
  name: "Output/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Output/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Output/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Output/kernel/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 14400
        }
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/kernel/Adam/Assign"
  op: "Assign"
  input: "Output/kernel/Adam"
  input: "Output/kernel/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/kernel/Adam/read"
  op: "Identity"
  input: "Output/kernel/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "@8\000\000i\001\000\000"
      }
    }
  }
}
node {
  name: "Output/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Output/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Output/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Output/kernel/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 14400
        }
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Output/kernel/Adam_1"
  input: "Output/kernel/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/kernel/Adam_1/read"
  op: "Identity"
  input: "Output/kernel/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
}
node {
  name: "Output/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 361
      }
    }
  }
}
node {
  name: "Output/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Output/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Output/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Output/bias/Adam/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/bias/Adam/Assign"
  op: "Assign"
  input: "Output/bias/Adam"
  input: "Output/bias/Adam/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/bias/Adam/read"
  op: "Identity"
  input: "Output/bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
}
node {
  name: "Output/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 361
      }
    }
  }
}
node {
  name: "Output/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Output/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Output/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Output/bias/Adam_1/Initializer/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Output/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 361
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "Output/bias/Adam_1/Assign"
  op: "Assign"
  input: "Output/bias/Adam_1"
  input: "Output/bias/Adam_1/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Output/bias/Adam_1/read"
  op: "Identity"
  input: "Output/bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/learning_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0017999999690800905
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/update_Input/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Input/kernel"
  input: "Input/kernel/Adam"
  input: "Input/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Input/Conv2D_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/update_Input/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Input/bias"
  input: "Input/bias/Adam"
  input: "Input/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/update_Output/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Output/kernel"
  input: "Output/kernel/Adam"
  input: "Output/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/update_Output/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Output/bias"
  input: "Output/bias/Adam"
  input: "Output/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Output/BiasAdd_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "use_nesterov"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/mul"
  op: "Mul"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/Adam/beta1"
  input: "^training/TFOptimizer/Adam/update_Input/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Input/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/bias/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/Assign"
  op: "Assign"
  input: "training/TFOptimizer/beta1_power"
  input: "training/TFOptimizer/Adam/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/mul_1"
  op: "Mul"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/beta2"
  input: "^training/TFOptimizer/Adam/update_Input/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Input/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/bias/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/Assign_1"
  op: "Assign"
  input: "training/TFOptimizer/beta2_power"
  input: "training/TFOptimizer/Adam/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/update"
  op: "NoOp"
  input: "^training/TFOptimizer/Adam/update_Input/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Input/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Output/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/Assign"
  input: "^training/TFOptimizer/Adam/Assign_1"
}
node {
  name: "training/TFOptimizer/Adam/Read/ReadVariableOp"
  op: "ReadVariableOp"
  input: "TFOptimizer/iterations"
  input: "^training/TFOptimizer/Adam/update"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/Identity"
  op: "Identity"
  input: "training/TFOptimizer/Adam/Read/ReadVariableOp"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/TFOptimizer/Adam/Const"
  op: "Const"
  input: "^training/TFOptimizer/Adam/update"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/Adam/Read/ReadVariableOp"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT64
        tensor_shape {
        }
        int64_val: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/Adam"
  op: "AssignAddVariableOp"
  input: "TFOptimizer/iterations"
  input: "training/TFOptimizer/Adam/Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@training/TFOptimizer/Adam/Read/ReadVariableOp"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "training/group_deps"
  op: "NoOp"
  input: "^loss/mul"
  input: "^metrics/acc/Mean"
  input: "^training/TFOptimizer/ReadVariableOp"
  input: "^training/TFOptimizer/Adam"
}
node {
  name: "group_deps_1"
  op: "NoOp"
  input: "^loss/mul"
  input: "^metrics/acc/Mean"
}
node {
  name: "IsVariableInitialized_4"
  op: "IsVariableInitialized"
  input: "training/TFOptimizer/beta1_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_5"
  op: "IsVariableInitialized"
  input: "training/TFOptimizer/beta2_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_6"
  op: "IsVariableInitialized"
  input: "Input/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_7"
  op: "IsVariableInitialized"
  input: "Input/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_8"
  op: "IsVariableInitialized"
  input: "Input/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_9"
  op: "IsVariableInitialized"
  input: "Input/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_10"
  op: "IsVariableInitialized"
  input: "Output/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_11"
  op: "IsVariableInitialized"
  input: "Output/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_12"
  op: "IsVariableInitialized"
  input: "Output/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "IsVariableInitialized_13"
  op: "IsVariableInitialized"
  input: "Output/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "init_1"
  op: "NoOp"
  input: "^training/TFOptimizer/beta1_power/Assign"
  input: "^training/TFOptimizer/beta2_power/Assign"
  input: "^Input/kernel/Adam/Assign"
  input: "^Input/kernel/Adam_1/Assign"
  input: "^Input/bias/Adam/Assign"
  input: "^Input/bias/Adam_1/Assign"
  input: "^Output/kernel/Adam/Assign"
  input: "^Output/kernel/Adam_1/Assign"
  input: "^Output/bias/Adam/Assign"
  input: "^Output/bias/Adam_1/Assign"
}
node {
  name: "init_2"
  op: "NoOp"
  input: "^Input/kernel/Assign"
  input: "^Input/bias/Assign"
  input: "^Output/kernel/Assign"
  input: "^Output/bias/Assign"
  input: "^TFOptimizer/iterations/Assign"
  input: "^training/TFOptimizer/beta1_power/Assign"
  input: "^training/TFOptimizer/beta2_power/Assign"
  input: "^Input/kernel/Adam/Assign"
  input: "^Input/kernel/Adam_1/Assign"
  input: "^Input/bias/Adam/Assign"
  input: "^Input/bias/Adam_1/Assign"
  input: "^Output/kernel/Adam/Assign"
  input: "^Output/kernel/Adam_1/Assign"
  input: "^Output/bias/Adam/Assign"
  input: "^Output/bias/Adam_1/Assign"
}
node {
  name: "save/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/SaveV2/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 15
          }
        }
        string_val: "Input/bias"
        string_val: "Input/bias/Adam"
        string_val: "Input/bias/Adam_1"
        string_val: "Input/kernel"
        string_val: "Input/kernel/Adam"
        string_val: "Input/kernel/Adam_1"
        string_val: "Output/bias"
        string_val: "Output/bias/Adam"
        string_val: "Output/bias/Adam_1"
        string_val: "Output/kernel"
        string_val: "Output/kernel/Adam"
        string_val: "Output/kernel/Adam_1"
        string_val: "TFOptimizer/iterations"
        string_val: "training/TFOptimizer/beta1_power"
        string_val: "training/TFOptimizer/beta2_power"
      }
    }
  }
}
node {
  name: "save/SaveV2/shape_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 15
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/SaveV2"
  op: "SaveV2"
  input: "save/Const"
  input: "save/SaveV2/tensor_names"
  input: "save/SaveV2/shape_and_slices"
  input: "Input/bias"
  input: "Input/bias/Adam"
  input: "Input/bias/Adam_1"
  input: "Input/kernel"
  input: "Input/kernel/Adam"
  input: "Input/kernel/Adam_1"
  input: "Output/bias"
  input: "Output/bias/Adam"
  input: "Output/bias/Adam_1"
  input: "Output/kernel"
  input: "Output/kernel/Adam"
  input: "Output/kernel/Adam_1"
  input: "TFOptimizer/iterations/Read/ReadVariableOp"
  input: "training/TFOptimizer/beta1_power"
  input: "training/TFOptimizer/beta2_power"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_INT64
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/SaveV2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/RestoreV2/tensor_names"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 15
          }
        }
        string_val: "Input/bias"
        string_val: "Input/bias/Adam"
        string_val: "Input/bias/Adam_1"
        string_val: "Input/kernel"
        string_val: "Input/kernel/Adam"
        string_val: "Input/kernel/Adam_1"
        string_val: "Output/bias"
        string_val: "Output/bias/Adam"
        string_val: "Output/bias/Adam_1"
        string_val: "Output/kernel"
        string_val: "Output/kernel/Adam"
        string_val: "Output/kernel/Adam_1"
        string_val: "TFOptimizer/iterations"
        string_val: "training/TFOptimizer/beta1_power"
        string_val: "training/TFOptimizer/beta2_power"
      }
    }
  }
}
node {
  name: "save/RestoreV2/shape_and_slices"
  op: "Const"
  device: "/device:CPU:0"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 15
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/RestoreV2"
  op: "RestoreV2"
  input: "save/Const"
  input: "save/RestoreV2/tensor_names"
  input: "save/RestoreV2/shape_and_slices"
  device: "/device:CPU:0"
  attr {
    key: "dtypes"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_INT64
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/Assign"
  op: "Assign"
  input: "Input/bias"
  input: "save/RestoreV2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_1"
  op: "Assign"
  input: "Input/bias/Adam"
  input: "save/RestoreV2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_2"
  op: "Assign"
  input: "Input/bias/Adam_1"
  input: "save/RestoreV2:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_3"
  op: "Assign"
  input: "Input/kernel"
  input: "save/RestoreV2:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_4"
  op: "Assign"
  input: "Input/kernel/Adam"
  input: "save/RestoreV2:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_5"
  op: "Assign"
  input: "Input/kernel/Adam_1"
  input: "save/RestoreV2:5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_6"
  op: "Assign"
  input: "Output/bias"
  input: "save/RestoreV2:6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_7"
  op: "Assign"
  input: "Output/bias/Adam"
  input: "save/RestoreV2:7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_8"
  op: "Assign"
  input: "Output/bias/Adam_1"
  input: "save/RestoreV2:8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_9"
  op: "Assign"
  input: "Output/kernel"
  input: "save/RestoreV2:9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_10"
  op: "Assign"
  input: "Output/kernel/Adam"
  input: "save/RestoreV2:10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_11"
  op: "Assign"
  input: "Output/kernel/Adam_1"
  input: "save/RestoreV2:11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Output/kernel"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Identity"
  op: "Identity"
  input: "save/RestoreV2:12"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "save/AssignVariableOp"
  op: "AssignVariableOp"
  input: "TFOptimizer/iterations"
  input: "save/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "save/Assign_12"
  op: "Assign"
  input: "training/TFOptimizer/beta1_power"
  input: "save/RestoreV2:13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/Assign_13"
  op: "Assign"
  input: "training/TFOptimizer/beta2_power"
  input: "save/RestoreV2:14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Input/bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/Assign"
  input: "^save/Assign_1"
  input: "^save/Assign_2"
  input: "^save/Assign_3"
  input: "^save/Assign_4"
  input: "^save/Assign_5"
  input: "^save/Assign_6"
  input: "^save/Assign_7"
  input: "^save/Assign_8"
  input: "^save/Assign_9"
  input: "^save/Assign_10"
  input: "^save/Assign_11"
  input: "^save/AssignVariableOp"
  input: "^save/Assign_12"
  input: "^save/Assign_13"
}
versions {
  producer: 26
}
