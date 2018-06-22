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
  name: "Pad0/Pad/paddings"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\000\004\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "Pad0/Pad"
  op: "Pad"
  input: "Input/BiasAdd"
  input: "Pad0/Pad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Norm0/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm0/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm0/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm0/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Assign"
  op: "Assign"
  input: "Norm0/gamma"
  input: "Norm0/gamma/Initializer/ones"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/read"
  op: "Identity"
  input: "Norm0/gamma"
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
        s: "loc:@Norm0/gamma"
      }
    }
  }
}
node {
  name: "Norm0/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm0/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm0/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Assign"
  op: "Assign"
  input: "Norm0/beta"
  input: "Norm0/beta/Initializer/zeros"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/read"
  op: "Identity"
  input: "Norm0/beta"
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
        s: "loc:@Norm0/beta"
      }
    }
  }
}
node {
  name: "Norm0/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_mean"
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
  name: "Norm0/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_mean"
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
  name: "Norm0/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm0/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm0/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm0/moving_mean"
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
  name: "Norm0/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_mean"
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
  name: "Norm0/moving_mean/Assign"
  op: "Assign"
  input: "Norm0/moving_mean"
  input: "Norm0/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm0/moving_mean"
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
  name: "Norm0/moving_mean/read"
  op: "Identity"
  input: "Norm0/moving_mean"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
}
node {
  name: "Norm0/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_variance"
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
  name: "Norm0/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm0/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm0/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm0/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm0/moving_variance"
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
  name: "Norm0/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_variance"
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
  name: "Norm0/moving_variance/Assign"
  op: "Assign"
  input: "Norm0/moving_variance"
  input: "Norm0/moving_variance/Initializer/ones"
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
        s: "loc:@Norm0/moving_variance"
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
  name: "Norm0/moving_variance/read"
  op: "Identity"
  input: "Norm0/moving_variance"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
}
node {
  name: "Norm0/keras_learning_phase/input"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_BOOL
        tensor_shape {
        }
        bool_val: false
      }
    }
  }
}
node {
  name: "Norm0/keras_learning_phase"
  op: "PlaceholderWithDefault"
  input: "Norm0/keras_learning_phase/input"
  attr {
    key: "dtype"
    value {
      type: DT_BOOL
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "Norm0/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond/switch_t"
  op: "Identity"
  input: "Norm0/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond/switch_f"
  op: "Identity"
  input: "Norm0/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond/Const"
  op: "Const"
  input: "^Norm0/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm0/cond/Const_1"
  op: "Const"
  input: "^Norm0/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm0/cond/FusedBatchNorm/Switch:1"
  input: "Norm0/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm0/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm0/cond/Const"
  input: "Norm0/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Pad0/Pad"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Pad0/Pad"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm0/gamma/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/gamma"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm0/beta/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/beta"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm0/cond/FusedBatchNorm_1/Switch"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Pad0/Pad"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Pad0/Pad"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm0/gamma/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/gamma"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm0/beta/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/beta"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm0/moving_mean/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
}
node {
  name: "Norm0/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm0/moving_variance/read"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
}
node {
  name: "Norm0/cond/Merge"
  op: "Merge"
  input: "Norm0/cond/FusedBatchNorm_1"
  input: "Norm0/cond/FusedBatchNorm"
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
}
node {
  name: "Norm0/cond/Merge_1"
  op: "Merge"
  input: "Norm0/cond/FusedBatchNorm_1:1"
  input: "Norm0/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm0/cond/Merge_2"
  op: "Merge"
  input: "Norm0/cond/FusedBatchNorm_1:2"
  input: "Norm0/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm0/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond_1/switch_t"
  op: "Identity"
  input: "Norm0/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond_1/switch_f"
  op: "Identity"
  input: "Norm0/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm0/cond_1/Const"
  op: "Const"
  input: "^Norm0/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm0/cond_1/Const_1"
  op: "Const"
  input: "^Norm0/cond_1/switch_f"
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
  name: "Norm0/cond_1/Merge"
  op: "Merge"
  input: "Norm0/cond_1/Const_1"
  input: "Norm0/cond_1/Const"
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
}
node {
  name: "Norm0/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm0/moving_mean"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm0/AssignMovingAvg/read"
  input: "Norm0/cond/Merge_1"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm0/AssignMovingAvg/Sub"
  input: "Norm0/cond_1/Merge"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm0/moving_mean"
  input: "Norm0/AssignMovingAvg/Mul"
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
        s: "loc:@Norm0/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm0/moving_variance"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm0/AssignMovingAvg_1/read"
  input: "Norm0/cond/Merge_2"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm0/AssignMovingAvg_1/Sub"
  input: "Norm0/cond_1/Merge"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
}
node {
  name: "Norm0/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm0/moving_variance"
  input: "Norm0/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm0/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop0/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop0/cond/switch_t"
  op: "Identity"
  input: "Drop0/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop0/cond/switch_f"
  op: "Identity"
  input: "Drop0/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop0/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop0/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop0/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop0/cond/dropout/Shape"
  op: "Shape"
  input: "Drop0/cond/dropout/Shape/Switch:1"
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
  name: "Drop0/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm0/cond/Merge"
  input: "Drop0/cond/pred_id"
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
        s: "loc:@Norm0/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop0/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop0/cond/switch_t"
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
  name: "Drop0/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop0/cond/switch_t"
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
  name: "Drop0/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop0/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop0/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop0/cond/dropout/random_uniform/max"
  input: "Drop0/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop0/cond/dropout/random_uniform/RandomUniform"
  input: "Drop0/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop0/cond/dropout/random_uniform/mul"
  input: "Drop0/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/add"
  op: "Add"
  input: "Drop0/cond/dropout/keep_prob"
  input: "Drop0/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/Floor"
  op: "Floor"
  input: "Drop0/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/div"
  op: "RealDiv"
  input: "Drop0/cond/dropout/Shape/Switch:1"
  input: "Drop0/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/dropout/mul"
  op: "Mul"
  input: "Drop0/cond/dropout/div"
  input: "Drop0/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/Identity"
  op: "Identity"
  input: "Drop0/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop0/cond/Identity/Switch"
  op: "Switch"
  input: "Norm0/cond/Merge"
  input: "Drop0/cond/pred_id"
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
        s: "loc:@Norm0/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop0/cond/Merge"
  op: "Merge"
  input: "Drop0/cond/Identity"
  input: "Drop0/cond/dropout/mul"
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
}
node {
  name: "Relu0/Relu"
  op: "Relu"
  input: "Drop0/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
        float_val: -0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
        float_val: 0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv1/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv1/kernel/Initializer/random_uniform/max"
  input: "Conv1/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv1/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv1/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv1/kernel/Initializer/random_uniform/mul"
  input: "Conv1/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv1/kernel/Assign"
  op: "Assign"
  input: "Conv1/kernel"
  input: "Conv1/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/read"
  op: "Identity"
  input: "Conv1/kernel"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv1/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv1/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Assign"
  op: "Assign"
  input: "Conv1/bias"
  input: "Conv1/bias/Initializer/zeros"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/read"
  op: "Identity"
  input: "Conv1/bias"
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
        s: "loc:@Conv1/bias"
      }
    }
  }
}
node {
  name: "Conv1/dilation_rate"
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
  name: "Conv1/Conv2D"
  op: "Conv2D"
  input: "Relu0/Relu"
  input: "Conv1/kernel/read"
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
  name: "Conv1/BiasAdd"
  op: "BiasAdd"
  input: "Conv1/Conv2D"
  input: "Conv1/bias/read"
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
  name: "Norm1/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm1/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm1/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm1/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Assign"
  op: "Assign"
  input: "Norm1/gamma"
  input: "Norm1/gamma/Initializer/ones"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/read"
  op: "Identity"
  input: "Norm1/gamma"
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
        s: "loc:@Norm1/gamma"
      }
    }
  }
}
node {
  name: "Norm1/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm1/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm1/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Assign"
  op: "Assign"
  input: "Norm1/beta"
  input: "Norm1/beta/Initializer/zeros"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/read"
  op: "Identity"
  input: "Norm1/beta"
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
        s: "loc:@Norm1/beta"
      }
    }
  }
}
node {
  name: "Norm1/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_mean"
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
  name: "Norm1/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_mean"
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
  name: "Norm1/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm1/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm1/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm1/moving_mean"
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
  name: "Norm1/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_mean"
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
  name: "Norm1/moving_mean/Assign"
  op: "Assign"
  input: "Norm1/moving_mean"
  input: "Norm1/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm1/moving_mean"
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
  name: "Norm1/moving_mean/read"
  op: "Identity"
  input: "Norm1/moving_mean"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
}
node {
  name: "Norm1/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_variance"
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
  name: "Norm1/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm1/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm1/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm1/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm1/moving_variance"
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
  name: "Norm1/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_variance"
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
  name: "Norm1/moving_variance/Assign"
  op: "Assign"
  input: "Norm1/moving_variance"
  input: "Norm1/moving_variance/Initializer/ones"
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
        s: "loc:@Norm1/moving_variance"
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
  name: "Norm1/moving_variance/read"
  op: "Identity"
  input: "Norm1/moving_variance"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
}
node {
  name: "Norm1/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond/switch_t"
  op: "Identity"
  input: "Norm1/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond/switch_f"
  op: "Identity"
  input: "Norm1/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond/Const"
  op: "Const"
  input: "^Norm1/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm1/cond/Const_1"
  op: "Const"
  input: "^Norm1/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm1/cond/FusedBatchNorm/Switch:1"
  input: "Norm1/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm1/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm1/cond/Const"
  input: "Norm1/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Conv1/BiasAdd"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Conv1/BiasAdd"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm1/gamma/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/gamma"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm1/beta/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/beta"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm1/cond/FusedBatchNorm_1/Switch"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Conv1/BiasAdd"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Conv1/BiasAdd"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm1/gamma/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/gamma"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm1/beta/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/beta"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm1/moving_mean/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
}
node {
  name: "Norm1/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm1/moving_variance/read"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
}
node {
  name: "Norm1/cond/Merge"
  op: "Merge"
  input: "Norm1/cond/FusedBatchNorm_1"
  input: "Norm1/cond/FusedBatchNorm"
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
}
node {
  name: "Norm1/cond/Merge_1"
  op: "Merge"
  input: "Norm1/cond/FusedBatchNorm_1:1"
  input: "Norm1/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm1/cond/Merge_2"
  op: "Merge"
  input: "Norm1/cond/FusedBatchNorm_1:2"
  input: "Norm1/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm1/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond_1/switch_t"
  op: "Identity"
  input: "Norm1/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond_1/switch_f"
  op: "Identity"
  input: "Norm1/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm1/cond_1/Const"
  op: "Const"
  input: "^Norm1/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm1/cond_1/Const_1"
  op: "Const"
  input: "^Norm1/cond_1/switch_f"
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
  name: "Norm1/cond_1/Merge"
  op: "Merge"
  input: "Norm1/cond_1/Const_1"
  input: "Norm1/cond_1/Const"
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
}
node {
  name: "Norm1/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm1/moving_mean"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm1/AssignMovingAvg/read"
  input: "Norm1/cond/Merge_1"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm1/AssignMovingAvg/Sub"
  input: "Norm1/cond_1/Merge"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm1/moving_mean"
  input: "Norm1/AssignMovingAvg/Mul"
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
        s: "loc:@Norm1/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm1/moving_variance"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm1/AssignMovingAvg_1/read"
  input: "Norm1/cond/Merge_2"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm1/AssignMovingAvg_1/Sub"
  input: "Norm1/cond_1/Merge"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
}
node {
  name: "Norm1/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm1/moving_variance"
  input: "Norm1/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm1/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop1/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop1/cond/switch_t"
  op: "Identity"
  input: "Drop1/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop1/cond/switch_f"
  op: "Identity"
  input: "Drop1/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop1/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop1/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop1/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop1/cond/dropout/Shape"
  op: "Shape"
  input: "Drop1/cond/dropout/Shape/Switch:1"
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
  name: "Drop1/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm1/cond/Merge"
  input: "Drop1/cond/pred_id"
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
        s: "loc:@Norm1/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop1/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop1/cond/switch_t"
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
  name: "Drop1/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop1/cond/switch_t"
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
  name: "Drop1/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop1/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop1/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop1/cond/dropout/random_uniform/max"
  input: "Drop1/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop1/cond/dropout/random_uniform/RandomUniform"
  input: "Drop1/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop1/cond/dropout/random_uniform/mul"
  input: "Drop1/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/add"
  op: "Add"
  input: "Drop1/cond/dropout/keep_prob"
  input: "Drop1/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/Floor"
  op: "Floor"
  input: "Drop1/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/div"
  op: "RealDiv"
  input: "Drop1/cond/dropout/Shape/Switch:1"
  input: "Drop1/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/dropout/mul"
  op: "Mul"
  input: "Drop1/cond/dropout/div"
  input: "Drop1/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/Identity"
  op: "Identity"
  input: "Drop1/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop1/cond/Identity/Switch"
  op: "Switch"
  input: "Norm1/cond/Merge"
  input: "Drop1/cond/pred_id"
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
        s: "loc:@Norm1/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop1/cond/Merge"
  op: "Merge"
  input: "Drop1/cond/Identity"
  input: "Drop1/cond/dropout/mul"
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
}
node {
  name: "Relu1/Relu"
  op: "Relu"
  input: "Drop1/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
        float_val: -0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
        float_val: 0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv2/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv2/kernel/Initializer/random_uniform/max"
  input: "Conv2/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv2/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv2/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv2/kernel/Initializer/random_uniform/mul"
  input: "Conv2/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv2/kernel/Assign"
  op: "Assign"
  input: "Conv2/kernel"
  input: "Conv2/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/read"
  op: "Identity"
  input: "Conv2/kernel"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv2/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv2/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Assign"
  op: "Assign"
  input: "Conv2/bias"
  input: "Conv2/bias/Initializer/zeros"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/read"
  op: "Identity"
  input: "Conv2/bias"
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
        s: "loc:@Conv2/bias"
      }
    }
  }
}
node {
  name: "Conv2/dilation_rate"
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
  name: "Conv2/Conv2D"
  op: "Conv2D"
  input: "Relu1/Relu"
  input: "Conv2/kernel/read"
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
  name: "Conv2/BiasAdd"
  op: "BiasAdd"
  input: "Conv2/Conv2D"
  input: "Conv2/bias/read"
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
  name: "Pad1/Pad/paddings"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Pad1/Pad"
  op: "Pad"
  input: "Conv2/BiasAdd"
  input: "Pad1/Pad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Norm2/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm2/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm2/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm2/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Assign"
  op: "Assign"
  input: "Norm2/gamma"
  input: "Norm2/gamma/Initializer/ones"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/read"
  op: "Identity"
  input: "Norm2/gamma"
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
        s: "loc:@Norm2/gamma"
      }
    }
  }
}
node {
  name: "Norm2/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm2/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm2/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Assign"
  op: "Assign"
  input: "Norm2/beta"
  input: "Norm2/beta/Initializer/zeros"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/read"
  op: "Identity"
  input: "Norm2/beta"
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
        s: "loc:@Norm2/beta"
      }
    }
  }
}
node {
  name: "Norm2/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_mean"
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
  name: "Norm2/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_mean"
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
  name: "Norm2/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm2/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm2/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm2/moving_mean"
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
  name: "Norm2/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_mean"
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
  name: "Norm2/moving_mean/Assign"
  op: "Assign"
  input: "Norm2/moving_mean"
  input: "Norm2/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm2/moving_mean"
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
  name: "Norm2/moving_mean/read"
  op: "Identity"
  input: "Norm2/moving_mean"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
}
node {
  name: "Norm2/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_variance"
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
  name: "Norm2/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm2/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm2/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm2/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm2/moving_variance"
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
  name: "Norm2/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_variance"
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
  name: "Norm2/moving_variance/Assign"
  op: "Assign"
  input: "Norm2/moving_variance"
  input: "Norm2/moving_variance/Initializer/ones"
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
        s: "loc:@Norm2/moving_variance"
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
  name: "Norm2/moving_variance/read"
  op: "Identity"
  input: "Norm2/moving_variance"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
}
node {
  name: "Norm2/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond/switch_t"
  op: "Identity"
  input: "Norm2/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond/switch_f"
  op: "Identity"
  input: "Norm2/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond/Const"
  op: "Const"
  input: "^Norm2/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm2/cond/Const_1"
  op: "Const"
  input: "^Norm2/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm2/cond/FusedBatchNorm/Switch:1"
  input: "Norm2/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm2/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm2/cond/Const"
  input: "Norm2/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Pad1/Pad"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Pad1/Pad"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm2/gamma/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/gamma"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm2/beta/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/beta"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm2/cond/FusedBatchNorm_1/Switch"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Pad1/Pad"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Pad1/Pad"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm2/gamma/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/gamma"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm2/beta/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/beta"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm2/moving_mean/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
}
node {
  name: "Norm2/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm2/moving_variance/read"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
}
node {
  name: "Norm2/cond/Merge"
  op: "Merge"
  input: "Norm2/cond/FusedBatchNorm_1"
  input: "Norm2/cond/FusedBatchNorm"
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
}
node {
  name: "Norm2/cond/Merge_1"
  op: "Merge"
  input: "Norm2/cond/FusedBatchNorm_1:1"
  input: "Norm2/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm2/cond/Merge_2"
  op: "Merge"
  input: "Norm2/cond/FusedBatchNorm_1:2"
  input: "Norm2/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm2/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond_1/switch_t"
  op: "Identity"
  input: "Norm2/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond_1/switch_f"
  op: "Identity"
  input: "Norm2/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm2/cond_1/Const"
  op: "Const"
  input: "^Norm2/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm2/cond_1/Const_1"
  op: "Const"
  input: "^Norm2/cond_1/switch_f"
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
  name: "Norm2/cond_1/Merge"
  op: "Merge"
  input: "Norm2/cond_1/Const_1"
  input: "Norm2/cond_1/Const"
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
}
node {
  name: "Norm2/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm2/moving_mean"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm2/AssignMovingAvg/read"
  input: "Norm2/cond/Merge_1"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm2/AssignMovingAvg/Sub"
  input: "Norm2/cond_1/Merge"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm2/moving_mean"
  input: "Norm2/AssignMovingAvg/Mul"
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
        s: "loc:@Norm2/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm2/moving_variance"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm2/AssignMovingAvg_1/read"
  input: "Norm2/cond/Merge_2"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm2/AssignMovingAvg_1/Sub"
  input: "Norm2/cond_1/Merge"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
}
node {
  name: "Norm2/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm2/moving_variance"
  input: "Norm2/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm2/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop2/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop2/cond/switch_t"
  op: "Identity"
  input: "Drop2/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop2/cond/switch_f"
  op: "Identity"
  input: "Drop2/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop2/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop2/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop2/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop2/cond/dropout/Shape"
  op: "Shape"
  input: "Drop2/cond/dropout/Shape/Switch:1"
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
  name: "Drop2/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm2/cond/Merge"
  input: "Drop2/cond/pred_id"
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
        s: "loc:@Norm2/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop2/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop2/cond/switch_t"
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
  name: "Drop2/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop2/cond/switch_t"
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
  name: "Drop2/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop2/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop2/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop2/cond/dropout/random_uniform/max"
  input: "Drop2/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop2/cond/dropout/random_uniform/RandomUniform"
  input: "Drop2/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop2/cond/dropout/random_uniform/mul"
  input: "Drop2/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/add"
  op: "Add"
  input: "Drop2/cond/dropout/keep_prob"
  input: "Drop2/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/Floor"
  op: "Floor"
  input: "Drop2/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/div"
  op: "RealDiv"
  input: "Drop2/cond/dropout/Shape/Switch:1"
  input: "Drop2/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/dropout/mul"
  op: "Mul"
  input: "Drop2/cond/dropout/div"
  input: "Drop2/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/Identity"
  op: "Identity"
  input: "Drop2/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop2/cond/Identity/Switch"
  op: "Switch"
  input: "Norm2/cond/Merge"
  input: "Drop2/cond/pred_id"
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
        s: "loc:@Norm2/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop2/cond/Merge"
  op: "Merge"
  input: "Drop2/cond/Identity"
  input: "Drop2/cond/dropout/mul"
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
}
node {
  name: "Relu2/Relu"
  op: "Relu"
  input: "Drop2/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
        float_val: -0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
        float_val: 0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv3/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv3/kernel/Initializer/random_uniform/max"
  input: "Conv3/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv3/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv3/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv3/kernel/Initializer/random_uniform/mul"
  input: "Conv3/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv3/kernel/Assign"
  op: "Assign"
  input: "Conv3/kernel"
  input: "Conv3/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/read"
  op: "Identity"
  input: "Conv3/kernel"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv3/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv3/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Assign"
  op: "Assign"
  input: "Conv3/bias"
  input: "Conv3/bias/Initializer/zeros"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/read"
  op: "Identity"
  input: "Conv3/bias"
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
        s: "loc:@Conv3/bias"
      }
    }
  }
}
node {
  name: "Conv3/dilation_rate"
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
  name: "Conv3/Conv2D"
  op: "Conv2D"
  input: "Relu2/Relu"
  input: "Conv3/kernel/read"
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
  name: "Conv3/BiasAdd"
  op: "BiasAdd"
  input: "Conv3/Conv2D"
  input: "Conv3/bias/read"
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
  name: "Pad2/Pad/paddings"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Pad2/Pad"
  op: "Pad"
  input: "Conv3/BiasAdd"
  input: "Pad2/Pad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Norm3/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm3/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm3/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm3/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Assign"
  op: "Assign"
  input: "Norm3/gamma"
  input: "Norm3/gamma/Initializer/ones"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/read"
  op: "Identity"
  input: "Norm3/gamma"
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
        s: "loc:@Norm3/gamma"
      }
    }
  }
}
node {
  name: "Norm3/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm3/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm3/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Assign"
  op: "Assign"
  input: "Norm3/beta"
  input: "Norm3/beta/Initializer/zeros"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/read"
  op: "Identity"
  input: "Norm3/beta"
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
        s: "loc:@Norm3/beta"
      }
    }
  }
}
node {
  name: "Norm3/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_mean"
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
  name: "Norm3/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_mean"
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
  name: "Norm3/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm3/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm3/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm3/moving_mean"
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
  name: "Norm3/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_mean"
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
  name: "Norm3/moving_mean/Assign"
  op: "Assign"
  input: "Norm3/moving_mean"
  input: "Norm3/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm3/moving_mean"
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
  name: "Norm3/moving_mean/read"
  op: "Identity"
  input: "Norm3/moving_mean"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
}
node {
  name: "Norm3/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_variance"
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
  name: "Norm3/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm3/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm3/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm3/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm3/moving_variance"
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
  name: "Norm3/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_variance"
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
  name: "Norm3/moving_variance/Assign"
  op: "Assign"
  input: "Norm3/moving_variance"
  input: "Norm3/moving_variance/Initializer/ones"
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
        s: "loc:@Norm3/moving_variance"
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
  name: "Norm3/moving_variance/read"
  op: "Identity"
  input: "Norm3/moving_variance"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
}
node {
  name: "Norm3/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond/switch_t"
  op: "Identity"
  input: "Norm3/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond/switch_f"
  op: "Identity"
  input: "Norm3/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond/Const"
  op: "Const"
  input: "^Norm3/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm3/cond/Const_1"
  op: "Const"
  input: "^Norm3/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm3/cond/FusedBatchNorm/Switch:1"
  input: "Norm3/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm3/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm3/cond/Const"
  input: "Norm3/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Pad2/Pad"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Pad2/Pad"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm3/gamma/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/gamma"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm3/beta/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/beta"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm3/cond/FusedBatchNorm_1/Switch"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Pad2/Pad"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Pad2/Pad"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm3/gamma/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/gamma"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm3/beta/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/beta"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm3/moving_mean/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
}
node {
  name: "Norm3/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm3/moving_variance/read"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
}
node {
  name: "Norm3/cond/Merge"
  op: "Merge"
  input: "Norm3/cond/FusedBatchNorm_1"
  input: "Norm3/cond/FusedBatchNorm"
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
}
node {
  name: "Norm3/cond/Merge_1"
  op: "Merge"
  input: "Norm3/cond/FusedBatchNorm_1:1"
  input: "Norm3/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm3/cond/Merge_2"
  op: "Merge"
  input: "Norm3/cond/FusedBatchNorm_1:2"
  input: "Norm3/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm3/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond_1/switch_t"
  op: "Identity"
  input: "Norm3/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond_1/switch_f"
  op: "Identity"
  input: "Norm3/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm3/cond_1/Const"
  op: "Const"
  input: "^Norm3/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm3/cond_1/Const_1"
  op: "Const"
  input: "^Norm3/cond_1/switch_f"
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
  name: "Norm3/cond_1/Merge"
  op: "Merge"
  input: "Norm3/cond_1/Const_1"
  input: "Norm3/cond_1/Const"
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
}
node {
  name: "Norm3/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm3/moving_mean"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm3/AssignMovingAvg/read"
  input: "Norm3/cond/Merge_1"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm3/AssignMovingAvg/Sub"
  input: "Norm3/cond_1/Merge"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm3/moving_mean"
  input: "Norm3/AssignMovingAvg/Mul"
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
        s: "loc:@Norm3/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm3/moving_variance"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm3/AssignMovingAvg_1/read"
  input: "Norm3/cond/Merge_2"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm3/AssignMovingAvg_1/Sub"
  input: "Norm3/cond_1/Merge"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
}
node {
  name: "Norm3/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm3/moving_variance"
  input: "Norm3/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm3/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop3/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop3/cond/switch_t"
  op: "Identity"
  input: "Drop3/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop3/cond/switch_f"
  op: "Identity"
  input: "Drop3/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop3/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop3/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop3/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop3/cond/dropout/Shape"
  op: "Shape"
  input: "Drop3/cond/dropout/Shape/Switch:1"
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
  name: "Drop3/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm3/cond/Merge"
  input: "Drop3/cond/pred_id"
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
        s: "loc:@Norm3/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop3/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop3/cond/switch_t"
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
  name: "Drop3/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop3/cond/switch_t"
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
  name: "Drop3/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop3/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop3/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop3/cond/dropout/random_uniform/max"
  input: "Drop3/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop3/cond/dropout/random_uniform/RandomUniform"
  input: "Drop3/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop3/cond/dropout/random_uniform/mul"
  input: "Drop3/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/add"
  op: "Add"
  input: "Drop3/cond/dropout/keep_prob"
  input: "Drop3/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/Floor"
  op: "Floor"
  input: "Drop3/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/div"
  op: "RealDiv"
  input: "Drop3/cond/dropout/Shape/Switch:1"
  input: "Drop3/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/dropout/mul"
  op: "Mul"
  input: "Drop3/cond/dropout/div"
  input: "Drop3/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/Identity"
  op: "Identity"
  input: "Drop3/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop3/cond/Identity/Switch"
  op: "Switch"
  input: "Norm3/cond/Merge"
  input: "Drop3/cond/pred_id"
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
        s: "loc:@Norm3/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop3/cond/Merge"
  op: "Merge"
  input: "Drop3/cond/Identity"
  input: "Drop3/cond/dropout/mul"
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
}
node {
  name: "Relu3/Relu"
  op: "Relu"
  input: "Drop3/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
        float_val: -0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
        float_val: 0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv4/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv4/kernel/Initializer/random_uniform/max"
  input: "Conv4/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv4/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv4/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv4/kernel/Initializer/random_uniform/mul"
  input: "Conv4/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv4/kernel/Assign"
  op: "Assign"
  input: "Conv4/kernel"
  input: "Conv4/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/read"
  op: "Identity"
  input: "Conv4/kernel"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv4/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv4/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Assign"
  op: "Assign"
  input: "Conv4/bias"
  input: "Conv4/bias/Initializer/zeros"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/read"
  op: "Identity"
  input: "Conv4/bias"
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
        s: "loc:@Conv4/bias"
      }
    }
  }
}
node {
  name: "Conv4/dilation_rate"
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
  name: "Conv4/Conv2D"
  op: "Conv2D"
  input: "Relu3/Relu"
  input: "Conv4/kernel/read"
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
  name: "Conv4/BiasAdd"
  op: "BiasAdd"
  input: "Conv4/Conv2D"
  input: "Conv4/bias/read"
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
  name: "Norm4/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm4/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm4/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm4/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Assign"
  op: "Assign"
  input: "Norm4/gamma"
  input: "Norm4/gamma/Initializer/ones"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/read"
  op: "Identity"
  input: "Norm4/gamma"
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
        s: "loc:@Norm4/gamma"
      }
    }
  }
}
node {
  name: "Norm4/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm4/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm4/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Assign"
  op: "Assign"
  input: "Norm4/beta"
  input: "Norm4/beta/Initializer/zeros"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/read"
  op: "Identity"
  input: "Norm4/beta"
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
        s: "loc:@Norm4/beta"
      }
    }
  }
}
node {
  name: "Norm4/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_mean"
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
  name: "Norm4/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_mean"
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
  name: "Norm4/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm4/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm4/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm4/moving_mean"
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
  name: "Norm4/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_mean"
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
  name: "Norm4/moving_mean/Assign"
  op: "Assign"
  input: "Norm4/moving_mean"
  input: "Norm4/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm4/moving_mean"
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
  name: "Norm4/moving_mean/read"
  op: "Identity"
  input: "Norm4/moving_mean"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
}
node {
  name: "Norm4/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_variance"
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
  name: "Norm4/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm4/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm4/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm4/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm4/moving_variance"
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
  name: "Norm4/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_variance"
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
  name: "Norm4/moving_variance/Assign"
  op: "Assign"
  input: "Norm4/moving_variance"
  input: "Norm4/moving_variance/Initializer/ones"
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
        s: "loc:@Norm4/moving_variance"
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
  name: "Norm4/moving_variance/read"
  op: "Identity"
  input: "Norm4/moving_variance"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
}
node {
  name: "Norm4/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond/switch_t"
  op: "Identity"
  input: "Norm4/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond/switch_f"
  op: "Identity"
  input: "Norm4/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond/Const"
  op: "Const"
  input: "^Norm4/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm4/cond/Const_1"
  op: "Const"
  input: "^Norm4/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm4/cond/FusedBatchNorm/Switch:1"
  input: "Norm4/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm4/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm4/cond/Const"
  input: "Norm4/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Conv4/BiasAdd"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Conv4/BiasAdd"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm4/gamma/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/gamma"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm4/beta/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/beta"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm4/cond/FusedBatchNorm_1/Switch"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Conv4/BiasAdd"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Conv4/BiasAdd"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm4/gamma/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/gamma"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm4/beta/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/beta"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm4/moving_mean/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
}
node {
  name: "Norm4/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm4/moving_variance/read"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
}
node {
  name: "Norm4/cond/Merge"
  op: "Merge"
  input: "Norm4/cond/FusedBatchNorm_1"
  input: "Norm4/cond/FusedBatchNorm"
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
}
node {
  name: "Norm4/cond/Merge_1"
  op: "Merge"
  input: "Norm4/cond/FusedBatchNorm_1:1"
  input: "Norm4/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm4/cond/Merge_2"
  op: "Merge"
  input: "Norm4/cond/FusedBatchNorm_1:2"
  input: "Norm4/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm4/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond_1/switch_t"
  op: "Identity"
  input: "Norm4/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond_1/switch_f"
  op: "Identity"
  input: "Norm4/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm4/cond_1/Const"
  op: "Const"
  input: "^Norm4/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm4/cond_1/Const_1"
  op: "Const"
  input: "^Norm4/cond_1/switch_f"
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
  name: "Norm4/cond_1/Merge"
  op: "Merge"
  input: "Norm4/cond_1/Const_1"
  input: "Norm4/cond_1/Const"
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
}
node {
  name: "Norm4/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm4/moving_mean"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm4/AssignMovingAvg/read"
  input: "Norm4/cond/Merge_1"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm4/AssignMovingAvg/Sub"
  input: "Norm4/cond_1/Merge"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm4/moving_mean"
  input: "Norm4/AssignMovingAvg/Mul"
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
        s: "loc:@Norm4/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm4/moving_variance"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm4/AssignMovingAvg_1/read"
  input: "Norm4/cond/Merge_2"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm4/AssignMovingAvg_1/Sub"
  input: "Norm4/cond_1/Merge"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
}
node {
  name: "Norm4/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm4/moving_variance"
  input: "Norm4/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm4/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Relu4/Relu"
  op: "Relu"
  input: "Norm4/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Pool0/MaxPool"
  op: "MaxPool"
  input: "Relu4/Relu"
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
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
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
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "Drop4/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop4/cond/switch_t"
  op: "Identity"
  input: "Drop4/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop4/cond/switch_f"
  op: "Identity"
  input: "Drop4/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop4/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop4/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop4/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop4/cond/dropout/Shape"
  op: "Shape"
  input: "Drop4/cond/dropout/Shape/Switch:1"
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
  name: "Drop4/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Pool0/MaxPool"
  input: "Drop4/cond/pred_id"
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
        s: "loc:@Pool0/MaxPool"
      }
    }
  }
}
node {
  name: "Drop4/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop4/cond/switch_t"
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
  name: "Drop4/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop4/cond/switch_t"
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
  name: "Drop4/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop4/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop4/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop4/cond/dropout/random_uniform/max"
  input: "Drop4/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop4/cond/dropout/random_uniform/RandomUniform"
  input: "Drop4/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop4/cond/dropout/random_uniform/mul"
  input: "Drop4/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/add"
  op: "Add"
  input: "Drop4/cond/dropout/keep_prob"
  input: "Drop4/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/Floor"
  op: "Floor"
  input: "Drop4/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/div"
  op: "RealDiv"
  input: "Drop4/cond/dropout/Shape/Switch:1"
  input: "Drop4/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/dropout/mul"
  op: "Mul"
  input: "Drop4/cond/dropout/div"
  input: "Drop4/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/Identity"
  op: "Identity"
  input: "Drop4/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop4/cond/Identity/Switch"
  op: "Switch"
  input: "Pool0/MaxPool"
  input: "Drop4/cond/pred_id"
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
        s: "loc:@Pool0/MaxPool"
      }
    }
  }
}
node {
  name: "Drop4/cond/Merge"
  op: "Merge"
  input: "Drop4/cond/Identity"
  input: "Drop4/cond/dropout/mul"
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
}
node {
  name: "Conv5/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
        float_val: -0.0833333358168602
      }
    }
  }
}
node {
  name: "Conv5/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
        float_val: 0.0833333358168602
      }
    }
  }
}
node {
  name: "Conv5/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv5/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv5/kernel/Initializer/random_uniform/max"
  input: "Conv5/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv5/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv5/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv5/kernel/Initializer/random_uniform/mul"
  input: "Conv5/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
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
  name: "Conv5/kernel/Assign"
  op: "Assign"
  input: "Conv5/kernel"
  input: "Conv5/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/read"
  op: "Identity"
  input: "Conv5/kernel"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv5/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv5/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Assign"
  op: "Assign"
  input: "Conv5/bias"
  input: "Conv5/bias/Initializer/zeros"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/read"
  op: "Identity"
  input: "Conv5/bias"
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
        s: "loc:@Conv5/bias"
      }
    }
  }
}
node {
  name: "Conv5/dilation_rate"
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
  name: "Conv5/Conv2D"
  op: "Conv2D"
  input: "Drop4/cond/Merge"
  input: "Conv5/kernel/read"
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
  name: "Conv5/BiasAdd"
  op: "BiasAdd"
  input: "Conv5/Conv2D"
  input: "Conv5/bias/read"
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
  name: "Pad3/Pad/paddings"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Pad3/Pad"
  op: "Pad"
  input: "Conv5/BiasAdd"
  input: "Pad3/Pad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Norm5/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm5/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm5/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm5/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Assign"
  op: "Assign"
  input: "Norm5/gamma"
  input: "Norm5/gamma/Initializer/ones"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/read"
  op: "Identity"
  input: "Norm5/gamma"
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
        s: "loc:@Norm5/gamma"
      }
    }
  }
}
node {
  name: "Norm5/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm5/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm5/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Assign"
  op: "Assign"
  input: "Norm5/beta"
  input: "Norm5/beta/Initializer/zeros"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/read"
  op: "Identity"
  input: "Norm5/beta"
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
        s: "loc:@Norm5/beta"
      }
    }
  }
}
node {
  name: "Norm5/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_mean"
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
  name: "Norm5/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_mean"
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
  name: "Norm5/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm5/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm5/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm5/moving_mean"
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
  name: "Norm5/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_mean"
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
  name: "Norm5/moving_mean/Assign"
  op: "Assign"
  input: "Norm5/moving_mean"
  input: "Norm5/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm5/moving_mean"
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
  name: "Norm5/moving_mean/read"
  op: "Identity"
  input: "Norm5/moving_mean"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
}
node {
  name: "Norm5/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_variance"
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
  name: "Norm5/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm5/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm5/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm5/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm5/moving_variance"
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
  name: "Norm5/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_variance"
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
  name: "Norm5/moving_variance/Assign"
  op: "Assign"
  input: "Norm5/moving_variance"
  input: "Norm5/moving_variance/Initializer/ones"
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
        s: "loc:@Norm5/moving_variance"
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
  name: "Norm5/moving_variance/read"
  op: "Identity"
  input: "Norm5/moving_variance"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
}
node {
  name: "Norm5/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond/switch_t"
  op: "Identity"
  input: "Norm5/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond/switch_f"
  op: "Identity"
  input: "Norm5/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond/Const"
  op: "Const"
  input: "^Norm5/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm5/cond/Const_1"
  op: "Const"
  input: "^Norm5/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm5/cond/FusedBatchNorm/Switch:1"
  input: "Norm5/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm5/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm5/cond/Const"
  input: "Norm5/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Pad3/Pad"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Pad3/Pad"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm5/gamma/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/gamma"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm5/beta/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/beta"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm5/cond/FusedBatchNorm_1/Switch"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Pad3/Pad"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Pad3/Pad"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm5/gamma/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/gamma"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm5/beta/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/beta"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm5/moving_mean/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
}
node {
  name: "Norm5/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm5/moving_variance/read"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
}
node {
  name: "Norm5/cond/Merge"
  op: "Merge"
  input: "Norm5/cond/FusedBatchNorm_1"
  input: "Norm5/cond/FusedBatchNorm"
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
}
node {
  name: "Norm5/cond/Merge_1"
  op: "Merge"
  input: "Norm5/cond/FusedBatchNorm_1:1"
  input: "Norm5/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm5/cond/Merge_2"
  op: "Merge"
  input: "Norm5/cond/FusedBatchNorm_1:2"
  input: "Norm5/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm5/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond_1/switch_t"
  op: "Identity"
  input: "Norm5/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond_1/switch_f"
  op: "Identity"
  input: "Norm5/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm5/cond_1/Const"
  op: "Const"
  input: "^Norm5/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm5/cond_1/Const_1"
  op: "Const"
  input: "^Norm5/cond_1/switch_f"
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
  name: "Norm5/cond_1/Merge"
  op: "Merge"
  input: "Norm5/cond_1/Const_1"
  input: "Norm5/cond_1/Const"
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
}
node {
  name: "Norm5/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm5/moving_mean"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm5/AssignMovingAvg/read"
  input: "Norm5/cond/Merge_1"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm5/AssignMovingAvg/Sub"
  input: "Norm5/cond_1/Merge"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm5/moving_mean"
  input: "Norm5/AssignMovingAvg/Mul"
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
        s: "loc:@Norm5/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm5/moving_variance"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm5/AssignMovingAvg_1/read"
  input: "Norm5/cond/Merge_2"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm5/AssignMovingAvg_1/Sub"
  input: "Norm5/cond_1/Merge"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
}
node {
  name: "Norm5/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm5/moving_variance"
  input: "Norm5/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm5/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop5/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop5/cond/switch_t"
  op: "Identity"
  input: "Drop5/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop5/cond/switch_f"
  op: "Identity"
  input: "Drop5/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop5/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop5/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop5/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop5/cond/dropout/Shape"
  op: "Shape"
  input: "Drop5/cond/dropout/Shape/Switch:1"
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
  name: "Drop5/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm5/cond/Merge"
  input: "Drop5/cond/pred_id"
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
        s: "loc:@Norm5/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop5/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop5/cond/switch_t"
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
  name: "Drop5/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop5/cond/switch_t"
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
  name: "Drop5/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop5/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop5/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop5/cond/dropout/random_uniform/max"
  input: "Drop5/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop5/cond/dropout/random_uniform/RandomUniform"
  input: "Drop5/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop5/cond/dropout/random_uniform/mul"
  input: "Drop5/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/add"
  op: "Add"
  input: "Drop5/cond/dropout/keep_prob"
  input: "Drop5/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/Floor"
  op: "Floor"
  input: "Drop5/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/div"
  op: "RealDiv"
  input: "Drop5/cond/dropout/Shape/Switch:1"
  input: "Drop5/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/dropout/mul"
  op: "Mul"
  input: "Drop5/cond/dropout/div"
  input: "Drop5/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/Identity"
  op: "Identity"
  input: "Drop5/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop5/cond/Identity/Switch"
  op: "Switch"
  input: "Norm5/cond/Merge"
  input: "Drop5/cond/pred_id"
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
        s: "loc:@Norm5/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop5/cond/Merge"
  op: "Merge"
  input: "Drop5/cond/Identity"
  input: "Drop5/cond/dropout/mul"
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
}
node {
  name: "Relu5/Relu"
  op: "Relu"
  input: "Drop5/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
        float_val: -0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
        float_val: 0.07216878235340118
      }
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Conv6/kernel/Initializer/random_uniform/shape"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Initializer/random_uniform/sub"
  op: "Sub"
  input: "Conv6/kernel/Initializer/random_uniform/max"
  input: "Conv6/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform/mul"
  op: "Mul"
  input: "Conv6/kernel/Initializer/random_uniform/RandomUniform"
  input: "Conv6/kernel/Initializer/random_uniform/sub"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Initializer/random_uniform"
  op: "Add"
  input: "Conv6/kernel/Initializer/random_uniform/mul"
  input: "Conv6/kernel/Initializer/random_uniform/min"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/kernel"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv6/kernel/Assign"
  op: "Assign"
  input: "Conv6/kernel"
  input: "Conv6/kernel/Initializer/random_uniform"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/read"
  op: "Identity"
  input: "Conv6/kernel"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/bias/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Initializer/zeros"
  op: "Fill"
  input: "Conv6/bias/Initializer/zeros/shape_as_tensor"
  input: "Conv6/bias/Initializer/zeros/Const"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Assign"
  op: "Assign"
  input: "Conv6/bias"
  input: "Conv6/bias/Initializer/zeros"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/read"
  op: "Identity"
  input: "Conv6/bias"
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
        s: "loc:@Conv6/bias"
      }
    }
  }
}
node {
  name: "Conv6/dilation_rate"
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
  name: "Conv6/Conv2D"
  op: "Conv2D"
  input: "Relu5/Relu"
  input: "Conv6/kernel/read"
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
  name: "Conv6/BiasAdd"
  op: "BiasAdd"
  input: "Conv6/Conv2D"
  input: "Conv6/bias/read"
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
  name: "Pad4/Pad/paddings"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Pad4/Pad"
  op: "Pad"
  input: "Conv6/BiasAdd"
  input: "Pad4/Pad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Norm6/gamma/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm6/gamma/Initializer/ones"
  op: "Fill"
  input: "Norm6/gamma/Initializer/ones/shape_as_tensor"
  input: "Norm6/gamma/Initializer/ones/Const"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Assign"
  op: "Assign"
  input: "Norm6/gamma"
  input: "Norm6/gamma/Initializer/ones"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/read"
  op: "Identity"
  input: "Norm6/gamma"
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
        s: "loc:@Norm6/gamma"
      }
    }
  }
}
node {
  name: "Norm6/beta/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Initializer/zeros"
  op: "Fill"
  input: "Norm6/beta/Initializer/zeros/shape_as_tensor"
  input: "Norm6/beta/Initializer/zeros/Const"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Assign"
  op: "Assign"
  input: "Norm6/beta"
  input: "Norm6/beta/Initializer/zeros"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/read"
  op: "Identity"
  input: "Norm6/beta"
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
        s: "loc:@Norm6/beta"
      }
    }
  }
}
node {
  name: "Norm6/moving_mean/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_mean"
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
  name: "Norm6/moving_mean/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_mean"
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
  name: "Norm6/moving_mean/Initializer/zeros"
  op: "Fill"
  input: "Norm6/moving_mean/Initializer/zeros/shape_as_tensor"
  input: "Norm6/moving_mean/Initializer/zeros/Const"
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
        s: "loc:@Norm6/moving_mean"
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
  name: "Norm6/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_mean"
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
  name: "Norm6/moving_mean/Assign"
  op: "Assign"
  input: "Norm6/moving_mean"
  input: "Norm6/moving_mean/Initializer/zeros"
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
        s: "loc:@Norm6/moving_mean"
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
  name: "Norm6/moving_mean/read"
  op: "Identity"
  input: "Norm6/moving_mean"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
}
node {
  name: "Norm6/moving_variance/Initializer/ones/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_variance"
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
  name: "Norm6/moving_variance/Initializer/ones/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_variance"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "Norm6/moving_variance/Initializer/ones"
  op: "Fill"
  input: "Norm6/moving_variance/Initializer/ones/shape_as_tensor"
  input: "Norm6/moving_variance/Initializer/ones/Const"
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
        s: "loc:@Norm6/moving_variance"
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
  name: "Norm6/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_variance"
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
  name: "Norm6/moving_variance/Assign"
  op: "Assign"
  input: "Norm6/moving_variance"
  input: "Norm6/moving_variance/Initializer/ones"
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
        s: "loc:@Norm6/moving_variance"
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
  name: "Norm6/moving_variance/read"
  op: "Identity"
  input: "Norm6/moving_variance"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
}
node {
  name: "Norm6/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond/switch_t"
  op: "Identity"
  input: "Norm6/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond/switch_f"
  op: "Identity"
  input: "Norm6/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond/Const"
  op: "Const"
  input: "^Norm6/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm6/cond/Const_1"
  op: "Const"
  input: "^Norm6/cond/switch_t"
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
          }
        }
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "Norm6/cond/FusedBatchNorm/Switch:1"
  input: "Norm6/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm6/cond/FusedBatchNorm/Switch_2:1"
  input: "Norm6/cond/Const"
  input: "Norm6/cond/Const_1"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm/Switch"
  op: "Switch"
  input: "Pad4/Pad"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Pad4/Pad"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm/Switch_1"
  op: "Switch"
  input: "Norm6/gamma/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/gamma"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm/Switch_2"
  op: "Switch"
  input: "Norm6/beta/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/beta"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1"
  op: "FusedBatchNorm"
  input: "Norm6/cond/FusedBatchNorm_1/Switch"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_2"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1/Switch"
  op: "Switch"
  input: "Pad4/Pad"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Pad4/Pad"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1/Switch_1"
  op: "Switch"
  input: "Norm6/gamma/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/gamma"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1/Switch_2"
  op: "Switch"
  input: "Norm6/beta/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/beta"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1/Switch_3"
  op: "Switch"
  input: "Norm6/moving_mean/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
}
node {
  name: "Norm6/cond/FusedBatchNorm_1/Switch_4"
  op: "Switch"
  input: "Norm6/moving_variance/read"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
}
node {
  name: "Norm6/cond/Merge"
  op: "Merge"
  input: "Norm6/cond/FusedBatchNorm_1"
  input: "Norm6/cond/FusedBatchNorm"
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
}
node {
  name: "Norm6/cond/Merge_1"
  op: "Merge"
  input: "Norm6/cond/FusedBatchNorm_1:1"
  input: "Norm6/cond/FusedBatchNorm:1"
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
}
node {
  name: "Norm6/cond/Merge_2"
  op: "Merge"
  input: "Norm6/cond/FusedBatchNorm_1:2"
  input: "Norm6/cond/FusedBatchNorm:2"
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
}
node {
  name: "Norm6/cond_1/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond_1/switch_t"
  op: "Identity"
  input: "Norm6/cond_1/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond_1/switch_f"
  op: "Identity"
  input: "Norm6/cond_1/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond_1/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Norm6/cond_1/Const"
  op: "Const"
  input: "^Norm6/cond_1/switch_t"
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
        float_val: 0.009999999776482582
      }
    }
  }
}
node {
  name: "Norm6/cond_1/Const_1"
  op: "Const"
  input: "^Norm6/cond_1/switch_f"
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
  name: "Norm6/cond_1/Merge"
  op: "Merge"
  input: "Norm6/cond_1/Const_1"
  input: "Norm6/cond_1/Const"
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
}
node {
  name: "Norm6/AssignMovingAvg/read"
  op: "Identity"
  input: "Norm6/moving_mean"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg/Sub"
  op: "Sub"
  input: "Norm6/AssignMovingAvg/read"
  input: "Norm6/cond/Merge_1"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg/Mul"
  op: "Mul"
  input: "Norm6/AssignMovingAvg/Sub"
  input: "Norm6/cond_1/Merge"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg"
  op: "AssignSub"
  input: "Norm6/moving_mean"
  input: "Norm6/AssignMovingAvg/Mul"
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
        s: "loc:@Norm6/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg_1/read"
  op: "Identity"
  input: "Norm6/moving_variance"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg_1/Sub"
  op: "Sub"
  input: "Norm6/AssignMovingAvg_1/read"
  input: "Norm6/cond/Merge_2"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg_1/Mul"
  op: "Mul"
  input: "Norm6/AssignMovingAvg_1/Sub"
  input: "Norm6/cond_1/Merge"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
}
node {
  name: "Norm6/AssignMovingAvg_1"
  op: "AssignSub"
  input: "Norm6/moving_variance"
  input: "Norm6/AssignMovingAvg_1/Mul"
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
        s: "loc:@Norm6/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Drop6/cond/Switch"
  op: "Switch"
  input: "Norm0/keras_learning_phase"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop6/cond/switch_t"
  op: "Identity"
  input: "Drop6/cond/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop6/cond/switch_f"
  op: "Identity"
  input: "Drop6/cond/Switch"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop6/cond/pred_id"
  op: "Identity"
  input: "Norm0/keras_learning_phase"
  attr {
    key: "T"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Drop6/cond/dropout/keep_prob"
  op: "Const"
  input: "^Drop6/cond/switch_t"
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
        float_val: 0.75
      }
    }
  }
}
node {
  name: "Drop6/cond/dropout/Shape"
  op: "Shape"
  input: "Drop6/cond/dropout/Shape/Switch:1"
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
  name: "Drop6/cond/dropout/Shape/Switch"
  op: "Switch"
  input: "Norm6/cond/Merge"
  input: "Drop6/cond/pred_id"
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
        s: "loc:@Norm6/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop6/cond/dropout/random_uniform/min"
  op: "Const"
  input: "^Drop6/cond/switch_t"
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
  name: "Drop6/cond/dropout/random_uniform/max"
  op: "Const"
  input: "^Drop6/cond/switch_t"
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
  name: "Drop6/cond/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "Drop6/cond/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "Drop6/cond/dropout/random_uniform/sub"
  op: "Sub"
  input: "Drop6/cond/dropout/random_uniform/max"
  input: "Drop6/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/random_uniform/mul"
  op: "Mul"
  input: "Drop6/cond/dropout/random_uniform/RandomUniform"
  input: "Drop6/cond/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/random_uniform"
  op: "Add"
  input: "Drop6/cond/dropout/random_uniform/mul"
  input: "Drop6/cond/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/add"
  op: "Add"
  input: "Drop6/cond/dropout/keep_prob"
  input: "Drop6/cond/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/Floor"
  op: "Floor"
  input: "Drop6/cond/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/div"
  op: "RealDiv"
  input: "Drop6/cond/dropout/Shape/Switch:1"
  input: "Drop6/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/dropout/mul"
  op: "Mul"
  input: "Drop6/cond/dropout/div"
  input: "Drop6/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/Identity"
  op: "Identity"
  input: "Drop6/cond/Identity/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Drop6/cond/Identity/Switch"
  op: "Switch"
  input: "Norm6/cond/Merge"
  input: "Drop6/cond/pred_id"
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
        s: "loc:@Norm6/cond/Merge"
      }
    }
  }
}
node {
  name: "Drop6/cond/Merge"
  op: "Merge"
  input: "Drop6/cond/Identity"
  input: "Drop6/cond/dropout/mul"
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
}
node {
  name: "Relu6/Relu"
  op: "Relu"
  input: "Drop6/cond/Merge"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Pool1/MaxPool"
  op: "MaxPool"
  input: "Relu6/Relu"
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
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
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
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "Flatten0/Shape"
  op: "Shape"
  input: "Pool1/MaxPool"
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
  name: "Flatten0/strided_slice/stack"
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
  name: "Flatten0/strided_slice/stack_1"
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
  name: "Flatten0/strided_slice/stack_2"
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
  name: "Flatten0/strided_slice"
  op: "StridedSlice"
  input: "Flatten0/Shape"
  input: "Flatten0/strided_slice/stack"
  input: "Flatten0/strided_slice/stack_1"
  input: "Flatten0/strided_slice/stack_2"
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
  name: "Flatten0/Reshape/shape/1"
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
  name: "Flatten0/Reshape/shape"
  op: "Pack"
  input: "Flatten0/strided_slice"
  input: "Flatten0/Reshape/shape/1"
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
  name: "Flatten0/Reshape"
  op: "Reshape"
  input: "Pool1/MaxPool"
  input: "Flatten0/Reshape/shape"
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
        tensor_content: "\200\t\000\000i\001\000\000"
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
        float_val: -0.04634897783398628
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
        float_val: 0.04634897783398628
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
          size: 2432
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
  input: "Flatten0/Reshape"
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
  input: "Norm0/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  input: "Norm0/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "IsVariableInitialized_4"
  op: "IsVariableInitialized"
  input: "Norm0/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_mean"
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
  input: "Norm0/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/moving_variance"
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
  input: "Conv1/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
  input: "Conv1/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  input: "Norm1/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  input: "Norm1/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  input: "Norm1/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_mean"
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
  input: "Norm1/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/moving_variance"
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
  input: "Conv2/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
  input: "Conv2/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "IsVariableInitialized_14"
  op: "IsVariableInitialized"
  input: "Norm2/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "IsVariableInitialized_15"
  op: "IsVariableInitialized"
  input: "Norm2/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "IsVariableInitialized_16"
  op: "IsVariableInitialized"
  input: "Norm2/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_mean"
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
  name: "IsVariableInitialized_17"
  op: "IsVariableInitialized"
  input: "Norm2/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/moving_variance"
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
  name: "IsVariableInitialized_18"
  op: "IsVariableInitialized"
  input: "Conv3/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
  name: "IsVariableInitialized_19"
  op: "IsVariableInitialized"
  input: "Conv3/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "IsVariableInitialized_20"
  op: "IsVariableInitialized"
  input: "Norm3/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "IsVariableInitialized_21"
  op: "IsVariableInitialized"
  input: "Norm3/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "IsVariableInitialized_22"
  op: "IsVariableInitialized"
  input: "Norm3/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_mean"
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
  name: "IsVariableInitialized_23"
  op: "IsVariableInitialized"
  input: "Norm3/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/moving_variance"
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
  name: "IsVariableInitialized_24"
  op: "IsVariableInitialized"
  input: "Conv4/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
  name: "IsVariableInitialized_25"
  op: "IsVariableInitialized"
  input: "Conv4/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "IsVariableInitialized_26"
  op: "IsVariableInitialized"
  input: "Norm4/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "IsVariableInitialized_27"
  op: "IsVariableInitialized"
  input: "Norm4/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "IsVariableInitialized_28"
  op: "IsVariableInitialized"
  input: "Norm4/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_mean"
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
  name: "IsVariableInitialized_29"
  op: "IsVariableInitialized"
  input: "Norm4/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/moving_variance"
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
  name: "IsVariableInitialized_30"
  op: "IsVariableInitialized"
  input: "Conv5/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
  name: "IsVariableInitialized_31"
  op: "IsVariableInitialized"
  input: "Conv5/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "IsVariableInitialized_32"
  op: "IsVariableInitialized"
  input: "Norm5/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "IsVariableInitialized_33"
  op: "IsVariableInitialized"
  input: "Norm5/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "IsVariableInitialized_34"
  op: "IsVariableInitialized"
  input: "Norm5/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_mean"
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
  name: "IsVariableInitialized_35"
  op: "IsVariableInitialized"
  input: "Norm5/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/moving_variance"
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
  name: "IsVariableInitialized_36"
  op: "IsVariableInitialized"
  input: "Conv6/kernel"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
  name: "IsVariableInitialized_37"
  op: "IsVariableInitialized"
  input: "Conv6/bias"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "IsVariableInitialized_38"
  op: "IsVariableInitialized"
  input: "Norm6/gamma"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "IsVariableInitialized_39"
  op: "IsVariableInitialized"
  input: "Norm6/beta"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "IsVariableInitialized_40"
  op: "IsVariableInitialized"
  input: "Norm6/moving_mean"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_mean"
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
  name: "IsVariableInitialized_41"
  op: "IsVariableInitialized"
  input: "Norm6/moving_variance"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/moving_variance"
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
  name: "IsVariableInitialized_42"
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
  name: "IsVariableInitialized_43"
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
  name: "init"
  op: "NoOp"
  input: "^Input/kernel/Assign"
  input: "^Input/bias/Assign"
  input: "^Norm0/gamma/Assign"
  input: "^Norm0/beta/Assign"
  input: "^Norm0/moving_mean/Assign"
  input: "^Norm0/moving_variance/Assign"
  input: "^Conv1/kernel/Assign"
  input: "^Conv1/bias/Assign"
  input: "^Norm1/gamma/Assign"
  input: "^Norm1/beta/Assign"
  input: "^Norm1/moving_mean/Assign"
  input: "^Norm1/moving_variance/Assign"
  input: "^Conv2/kernel/Assign"
  input: "^Conv2/bias/Assign"
  input: "^Norm2/gamma/Assign"
  input: "^Norm2/beta/Assign"
  input: "^Norm2/moving_mean/Assign"
  input: "^Norm2/moving_variance/Assign"
  input: "^Conv3/kernel/Assign"
  input: "^Conv3/bias/Assign"
  input: "^Norm3/gamma/Assign"
  input: "^Norm3/beta/Assign"
  input: "^Norm3/moving_mean/Assign"
  input: "^Norm3/moving_variance/Assign"
  input: "^Conv4/kernel/Assign"
  input: "^Conv4/bias/Assign"
  input: "^Norm4/gamma/Assign"
  input: "^Norm4/beta/Assign"
  input: "^Norm4/moving_mean/Assign"
  input: "^Norm4/moving_variance/Assign"
  input: "^Conv5/kernel/Assign"
  input: "^Conv5/bias/Assign"
  input: "^Norm5/gamma/Assign"
  input: "^Norm5/beta/Assign"
  input: "^Norm5/moving_mean/Assign"
  input: "^Norm5/moving_variance/Assign"
  input: "^Conv6/kernel/Assign"
  input: "^Conv6/bias/Assign"
  input: "^Norm6/gamma/Assign"
  input: "^Norm6/beta/Assign"
  input: "^Norm6/moving_mean/Assign"
  input: "^Norm6/moving_variance/Assign"
  input: "^Output/kernel/Assign"
  input: "^Output/bias/Assign"
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
  input: "Flatten0/Reshape"
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
  name: "training/TFOptimizer/gradients/Flatten0/Reshape_grad/Shape"
  op: "Shape"
  input: "Pool1/MaxPool"
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
  name: "training/TFOptimizer/gradients/Flatten0/Reshape_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Output/MatMul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Flatten0/Reshape_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Pool1/MaxPool_grad/MaxPoolGrad"
  op: "MaxPoolGrad"
  input: "Relu6/Relu"
  input: "Pool1/MaxPool"
  input: "training/TFOptimizer/gradients/Flatten0/Reshape_grad/Reshape"
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
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
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
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu6/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Pool1/MaxPool_grad/MaxPoolGrad"
  input: "Relu6/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu6/Relu_grad/ReluGrad"
  input: "Drop6/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu6/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop6/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu6/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu6/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop6/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop6/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop6/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop6/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch"
  op: "Switch"
  input: "Norm6/cond/Merge"
  input: "Drop6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_1"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch:1"
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
  name: "training/TFOptimizer/gradients/zeros/Const"
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
  name: "training/TFOptimizer/gradients/zeros"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_1"
  input: "training/TFOptimizer/gradients/zeros/Const"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop6/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop6/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop6/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop6/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Neg"
  input: "Drop6/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv_1"
  input: "Drop6/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_1"
  op: "Switch"
  input: "Norm6/cond/Merge"
  input: "Drop6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_2"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_1"
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
  name: "training/TFOptimizer/gradients/zeros_1/Const"
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
  name: "training/TFOptimizer/gradients/zeros_1"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_2"
  input: "training/TFOptimizer/gradients/zeros_1/Const"
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
  name: "training/TFOptimizer/gradients/Drop6/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_1"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_1"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop6/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_1"
  input: "Norm6/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm6/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop6/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_1"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_2"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_3"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm6/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm6/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_4"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_5"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_6"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_7"
  op: "ZerosLike"
  input: "Norm6/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm6/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm6/cond/FusedBatchNorm/Switch:1"
  input: "Norm6/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm6/cond/FusedBatchNorm:3"
  input: "Norm6/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_2"
  op: "Switch"
  input: "Pad4/Pad"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_3"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_2:1"
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
  name: "training/TFOptimizer/gradients/zeros_2/Const"
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
  name: "training/TFOptimizer/gradients/zeros_2"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_3"
  input: "training/TFOptimizer/gradients/zeros_2/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_2"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_3"
  op: "Switch"
  input: "Norm6/gamma/read"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_4"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_3:1"
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
  name: "training/TFOptimizer/gradients/zeros_3/Const"
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
  name: "training/TFOptimizer/gradients/zeros_3"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_4"
  input: "training/TFOptimizer/gradients/zeros_3/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_3"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_4"
  op: "Switch"
  input: "Norm6/beta/read"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_5"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_4:1"
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
  name: "training/TFOptimizer/gradients/zeros_4/Const"
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
  name: "training/TFOptimizer/gradients/zeros_4"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_5"
  input: "training/TFOptimizer/gradients/zeros_4/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_4"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_5"
  op: "Switch"
  input: "Pad4/Pad"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_6"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_5"
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
  name: "training/TFOptimizer/gradients/zeros_5/Const"
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
  name: "training/TFOptimizer/gradients/zeros_5"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_6"
  input: "training/TFOptimizer/gradients/zeros_5/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_5"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_6"
  op: "Switch"
  input: "Norm6/gamma/read"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_7"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_6"
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
  name: "training/TFOptimizer/gradients/zeros_6/Const"
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
  name: "training/TFOptimizer/gradients/zeros_6"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_7"
  input: "training/TFOptimizer/gradients/zeros_6/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_6"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_7"
  op: "Switch"
  input: "Norm6/beta/read"
  input: "Norm6/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_8"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_7"
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
  name: "training/TFOptimizer/gradients/zeros_7/Const"
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
  name: "training/TFOptimizer/gradients/zeros_7"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_8"
  input: "training/TFOptimizer/gradients/zeros_7/Const"
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
  name: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_7"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_2"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Rank"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/stack"
  op: "Pack"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Rank"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice/begin"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice"
  op: "Slice"
  input: "Pad4/Pad/paddings"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice/begin"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/stack"
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
}
node {
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Reshape/shape"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Shape"
  op: "Shape"
  input: "Conv6/BiasAdd"
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
  name: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice_1"
  op: "Slice"
  input: "training/TFOptimizer/gradients/AddN_2"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Reshape"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Shape"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_3"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_4"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm6/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice_1"
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
  name: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Pad4/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv6/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Pad4/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Pad4/Pad_grad/Slice_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv6/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Relu5/Relu"
  input: "Conv6/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/ShapeN"
  input: "Conv6/kernel/read"
  input: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Relu5/Relu"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv6/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu5/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/control_dependency"
  input: "Relu5/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu5/Relu_grad/ReluGrad"
  input: "Drop5/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu5/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop5/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu5/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu5/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop5/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop5/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop5/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop5/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_8"
  op: "Switch"
  input: "Norm5/cond/Merge"
  input: "Drop5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_9"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_8:1"
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
  name: "training/TFOptimizer/gradients/zeros_8/Const"
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
  name: "training/TFOptimizer/gradients/zeros_8"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_9"
  input: "training/TFOptimizer/gradients/zeros_8/Const"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop5/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_8"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop5/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop5/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop5/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Neg"
  input: "Drop5/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv_1"
  input: "Drop5/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_9"
  op: "Switch"
  input: "Norm5/cond/Merge"
  input: "Drop5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_10"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_9"
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
  name: "training/TFOptimizer/gradients/zeros_9/Const"
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
  name: "training/TFOptimizer/gradients/zeros_9"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_10"
  input: "training/TFOptimizer/gradients/zeros_9/Const"
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
  name: "training/TFOptimizer/gradients/Drop5/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_9"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_5"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop5/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_5"
  input: "Norm5/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm5/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop5/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_8"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_9"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_10"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_11"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm5/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm5/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_12"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_13"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_14"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_15"
  op: "ZerosLike"
  input: "Norm5/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm5/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm5/cond/FusedBatchNorm/Switch:1"
  input: "Norm5/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm5/cond/FusedBatchNorm:3"
  input: "Norm5/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_10"
  op: "Switch"
  input: "Pad3/Pad"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_11"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_10:1"
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
  name: "training/TFOptimizer/gradients/zeros_10/Const"
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
  name: "training/TFOptimizer/gradients/zeros_10"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_11"
  input: "training/TFOptimizer/gradients/zeros_10/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_10"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_11"
  op: "Switch"
  input: "Norm5/gamma/read"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_12"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_11:1"
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
  name: "training/TFOptimizer/gradients/zeros_11/Const"
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
  name: "training/TFOptimizer/gradients/zeros_11"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_12"
  input: "training/TFOptimizer/gradients/zeros_11/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_11"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_12"
  op: "Switch"
  input: "Norm5/beta/read"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_13"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_12:1"
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
  name: "training/TFOptimizer/gradients/zeros_12/Const"
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
  name: "training/TFOptimizer/gradients/zeros_12"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_13"
  input: "training/TFOptimizer/gradients/zeros_12/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_12"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_13"
  op: "Switch"
  input: "Pad3/Pad"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_14"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_13"
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
  name: "training/TFOptimizer/gradients/zeros_13/Const"
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
  name: "training/TFOptimizer/gradients/zeros_13"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_14"
  input: "training/TFOptimizer/gradients/zeros_13/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_13"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_14"
  op: "Switch"
  input: "Norm5/gamma/read"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_15"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_14"
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
  name: "training/TFOptimizer/gradients/zeros_14/Const"
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
  name: "training/TFOptimizer/gradients/zeros_14"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_15"
  input: "training/TFOptimizer/gradients/zeros_14/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_14"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_15"
  op: "Switch"
  input: "Norm5/beta/read"
  input: "Norm5/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_16"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_15"
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
  name: "training/TFOptimizer/gradients/zeros_15/Const"
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
  name: "training/TFOptimizer/gradients/zeros_15"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_16"
  input: "training/TFOptimizer/gradients/zeros_15/Const"
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
  name: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_15"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_6"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Rank"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/stack"
  op: "Pack"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Rank"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice/begin"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice"
  op: "Slice"
  input: "Pad3/Pad/paddings"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice/begin"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/stack"
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
}
node {
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Reshape/shape"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Shape"
  op: "Shape"
  input: "Conv5/BiasAdd"
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
  name: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice_1"
  op: "Slice"
  input: "training/TFOptimizer/gradients/AddN_6"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Reshape"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Shape"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_7"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_8"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm5/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice_1"
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
  name: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Pad3/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv5/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Pad3/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Pad3/Pad_grad/Slice_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Drop4/cond/Merge"
  input: "Conv5/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/ShapeN"
  input: "Conv5/kernel/read"
  input: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Drop4/cond/Merge"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/control_dependency"
  input: "Drop4/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop4/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv5/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop4/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop4/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop4/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop4/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_16"
  op: "Switch"
  input: "Pool0/MaxPool"
  input: "Drop4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_17"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_16:1"
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
  name: "training/TFOptimizer/gradients/zeros_16/Const"
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
  name: "training/TFOptimizer/gradients/zeros_16"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_17"
  input: "training/TFOptimizer/gradients/zeros_16/Const"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop4/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_16"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop4/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop4/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop4/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Neg"
  input: "Drop4/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv_1"
  input: "Drop4/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_17"
  op: "Switch"
  input: "Pool0/MaxPool"
  input: "Drop4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_18"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_17"
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
  name: "training/TFOptimizer/gradients/zeros_17/Const"
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
  name: "training/TFOptimizer/gradients/zeros_17"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_18"
  input: "training/TFOptimizer/gradients/zeros_17/Const"
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
  name: "training/TFOptimizer/gradients/Drop4/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_17"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_9"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop4/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop4/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop4/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pool0/MaxPool_grad/MaxPoolGrad"
  op: "MaxPoolGrad"
  input: "Relu4/Relu"
  input: "Pool0/MaxPool"
  input: "training/TFOptimizer/gradients/AddN_9"
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
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
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
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu4/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Pool0/MaxPool_grad/MaxPoolGrad"
  input: "Relu4/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu4/Relu_grad/ReluGrad"
  input: "Norm4/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu4/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm4/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu4/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu4/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_16"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_17"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_18"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_19"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm4/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm4/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_20"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_21"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_22"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_23"
  op: "ZerosLike"
  input: "Norm4/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm4/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm4/cond/FusedBatchNorm/Switch:1"
  input: "Norm4/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm4/cond/FusedBatchNorm:3"
  input: "Norm4/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_18"
  op: "Switch"
  input: "Conv4/BiasAdd"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_19"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_18:1"
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
  name: "training/TFOptimizer/gradients/zeros_18/Const"
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
  name: "training/TFOptimizer/gradients/zeros_18"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_19"
  input: "training/TFOptimizer/gradients/zeros_18/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_18"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_19"
  op: "Switch"
  input: "Norm4/gamma/read"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_20"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_19:1"
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
  name: "training/TFOptimizer/gradients/zeros_19/Const"
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
  name: "training/TFOptimizer/gradients/zeros_19"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_20"
  input: "training/TFOptimizer/gradients/zeros_19/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_19"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_20"
  op: "Switch"
  input: "Norm4/beta/read"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_21"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_20:1"
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
  name: "training/TFOptimizer/gradients/zeros_20/Const"
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
  name: "training/TFOptimizer/gradients/zeros_20"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_21"
  input: "training/TFOptimizer/gradients/zeros_20/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_20"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_21"
  op: "Switch"
  input: "Conv4/BiasAdd"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_22"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_21"
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
  name: "training/TFOptimizer/gradients/zeros_21/Const"
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
  name: "training/TFOptimizer/gradients/zeros_21"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_22"
  input: "training/TFOptimizer/gradients/zeros_21/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_21"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_22"
  op: "Switch"
  input: "Norm4/gamma/read"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_23"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_22"
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
  name: "training/TFOptimizer/gradients/zeros_22/Const"
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
  name: "training/TFOptimizer/gradients/zeros_22"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_23"
  input: "training/TFOptimizer/gradients/zeros_22/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_22"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_23"
  op: "Switch"
  input: "Norm4/beta/read"
  input: "Norm4/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_24"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_23"
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
  name: "training/TFOptimizer/gradients/zeros_23/Const"
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
  name: "training/TFOptimizer/gradients/zeros_23"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_24"
  input: "training/TFOptimizer/gradients/zeros_23/Const"
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
  name: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_23"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_10"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/AddN_10"
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
  name: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/AddN_10"
  input: "^training/TFOptimizer/gradients/Conv4/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/AddN_10"
  input: "^training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv4/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_11"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_12"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm4/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Relu3/Relu"
  input: "Conv4/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/ShapeN"
  input: "Conv4/kernel/read"
  input: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Relu3/Relu"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv4/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu3/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/control_dependency"
  input: "Relu3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu3/Relu_grad/ReluGrad"
  input: "Drop3/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu3/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop3/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu3/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu3/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop3/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop3/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop3/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop3/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_24"
  op: "Switch"
  input: "Norm3/cond/Merge"
  input: "Drop3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_25"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_24:1"
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
  name: "training/TFOptimizer/gradients/zeros_24/Const"
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
  name: "training/TFOptimizer/gradients/zeros_24"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_25"
  input: "training/TFOptimizer/gradients/zeros_24/Const"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop3/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_24"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop3/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop3/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop3/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Neg"
  input: "Drop3/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv_1"
  input: "Drop3/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_25"
  op: "Switch"
  input: "Norm3/cond/Merge"
  input: "Drop3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_26"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_25"
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
  name: "training/TFOptimizer/gradients/zeros_25/Const"
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
  name: "training/TFOptimizer/gradients/zeros_25"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_26"
  input: "training/TFOptimizer/gradients/zeros_25/Const"
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
  name: "training/TFOptimizer/gradients/Drop3/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_25"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_13"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop3/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_13"
  input: "Norm3/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm3/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop3/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_24"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_25"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_26"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_27"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm3/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm3/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_28"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_29"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_30"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_31"
  op: "ZerosLike"
  input: "Norm3/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm3/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm3/cond/FusedBatchNorm/Switch:1"
  input: "Norm3/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm3/cond/FusedBatchNorm:3"
  input: "Norm3/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_26"
  op: "Switch"
  input: "Pad2/Pad"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_27"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_26:1"
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
  name: "training/TFOptimizer/gradients/zeros_26/Const"
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
  name: "training/TFOptimizer/gradients/zeros_26"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_27"
  input: "training/TFOptimizer/gradients/zeros_26/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_26"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_27"
  op: "Switch"
  input: "Norm3/gamma/read"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_28"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_27:1"
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
  name: "training/TFOptimizer/gradients/zeros_27/Const"
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
  name: "training/TFOptimizer/gradients/zeros_27"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_28"
  input: "training/TFOptimizer/gradients/zeros_27/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_27"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_28"
  op: "Switch"
  input: "Norm3/beta/read"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_29"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_28:1"
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
  name: "training/TFOptimizer/gradients/zeros_28/Const"
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
  name: "training/TFOptimizer/gradients/zeros_28"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_29"
  input: "training/TFOptimizer/gradients/zeros_28/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_28"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_29"
  op: "Switch"
  input: "Pad2/Pad"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_30"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_29"
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
  name: "training/TFOptimizer/gradients/zeros_29/Const"
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
  name: "training/TFOptimizer/gradients/zeros_29"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_30"
  input: "training/TFOptimizer/gradients/zeros_29/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_29"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_30"
  op: "Switch"
  input: "Norm3/gamma/read"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_31"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_30"
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
  name: "training/TFOptimizer/gradients/zeros_30/Const"
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
  name: "training/TFOptimizer/gradients/zeros_30"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_31"
  input: "training/TFOptimizer/gradients/zeros_30/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_30"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_31"
  op: "Switch"
  input: "Norm3/beta/read"
  input: "Norm3/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_32"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_31"
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
  name: "training/TFOptimizer/gradients/zeros_31/Const"
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
  name: "training/TFOptimizer/gradients/zeros_31"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_32"
  input: "training/TFOptimizer/gradients/zeros_31/Const"
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
  name: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_31"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_14"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Rank"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/stack"
  op: "Pack"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Rank"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice/begin"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice"
  op: "Slice"
  input: "Pad2/Pad/paddings"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice/begin"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/stack"
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
}
node {
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Reshape/shape"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Shape"
  op: "Shape"
  input: "Conv3/BiasAdd"
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
  name: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice_1"
  op: "Slice"
  input: "training/TFOptimizer/gradients/AddN_14"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Reshape"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Shape"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_15"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_16"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice_1"
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
  name: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Pad2/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv3/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Pad2/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Pad2/Pad_grad/Slice_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv3/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Relu2/Relu"
  input: "Conv3/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/ShapeN"
  input: "Conv3/kernel/read"
  input: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Relu2/Relu"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv3/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu2/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/control_dependency"
  input: "Relu2/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu2/Relu_grad/ReluGrad"
  input: "Drop2/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu2/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop2/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu2/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu2/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop2/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop2/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop2/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop2/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_32"
  op: "Switch"
  input: "Norm2/cond/Merge"
  input: "Drop2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_33"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_32:1"
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
  name: "training/TFOptimizer/gradients/zeros_32/Const"
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
  name: "training/TFOptimizer/gradients/zeros_32"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_33"
  input: "training/TFOptimizer/gradients/zeros_32/Const"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop2/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_32"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop2/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop2/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop2/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Neg"
  input: "Drop2/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv_1"
  input: "Drop2/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_33"
  op: "Switch"
  input: "Norm2/cond/Merge"
  input: "Drop2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_34"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_33"
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
  name: "training/TFOptimizer/gradients/zeros_33/Const"
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
  name: "training/TFOptimizer/gradients/zeros_33"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_34"
  input: "training/TFOptimizer/gradients/zeros_33/Const"
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
  name: "training/TFOptimizer/gradients/Drop2/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_33"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_17"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop2/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_17"
  input: "Norm2/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm2/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop2/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_32"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_33"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_34"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_35"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm2/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm2/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_36"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_37"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_38"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_39"
  op: "ZerosLike"
  input: "Norm2/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm2/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm2/cond/FusedBatchNorm/Switch:1"
  input: "Norm2/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm2/cond/FusedBatchNorm:3"
  input: "Norm2/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_34"
  op: "Switch"
  input: "Pad1/Pad"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_35"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_34:1"
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
  name: "training/TFOptimizer/gradients/zeros_34/Const"
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
  name: "training/TFOptimizer/gradients/zeros_34"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_35"
  input: "training/TFOptimizer/gradients/zeros_34/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_34"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_35"
  op: "Switch"
  input: "Norm2/gamma/read"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_36"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_35:1"
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
  name: "training/TFOptimizer/gradients/zeros_35/Const"
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
  name: "training/TFOptimizer/gradients/zeros_35"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_36"
  input: "training/TFOptimizer/gradients/zeros_35/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_35"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_36"
  op: "Switch"
  input: "Norm2/beta/read"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_37"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_36:1"
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
  name: "training/TFOptimizer/gradients/zeros_36/Const"
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
  name: "training/TFOptimizer/gradients/zeros_36"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_37"
  input: "training/TFOptimizer/gradients/zeros_36/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_36"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_37"
  op: "Switch"
  input: "Pad1/Pad"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_38"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_37"
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
  name: "training/TFOptimizer/gradients/zeros_37/Const"
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
  name: "training/TFOptimizer/gradients/zeros_37"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_38"
  input: "training/TFOptimizer/gradients/zeros_37/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_37"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_38"
  op: "Switch"
  input: "Norm2/gamma/read"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_39"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_38"
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
  name: "training/TFOptimizer/gradients/zeros_38/Const"
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
  name: "training/TFOptimizer/gradients/zeros_38"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_39"
  input: "training/TFOptimizer/gradients/zeros_38/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_38"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_39"
  op: "Switch"
  input: "Norm2/beta/read"
  input: "Norm2/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_40"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_39"
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
  name: "training/TFOptimizer/gradients/zeros_39/Const"
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
  name: "training/TFOptimizer/gradients/zeros_39"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_40"
  input: "training/TFOptimizer/gradients/zeros_39/Const"
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
  name: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_39"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_18"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Rank"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/stack"
  op: "Pack"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Rank"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice/begin"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice"
  op: "Slice"
  input: "Pad1/Pad/paddings"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice/begin"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/stack"
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
}
node {
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Reshape/shape"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Shape"
  op: "Shape"
  input: "Conv2/BiasAdd"
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
  name: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice_1"
  op: "Slice"
  input: "training/TFOptimizer/gradients/AddN_18"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Reshape"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Shape"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_19"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_20"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice_1"
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
  name: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Pad1/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv2/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Pad1/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Pad1/Pad_grad/Slice_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv2/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Relu1/Relu"
  input: "Conv2/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/ShapeN"
  input: "Conv2/kernel/read"
  input: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Relu1/Relu"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv2/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu1/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/control_dependency"
  input: "Relu1/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu1/Relu_grad/ReluGrad"
  input: "Drop1/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu1/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop1/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu1/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu1/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop1/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop1/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop1/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop1/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_40"
  op: "Switch"
  input: "Norm1/cond/Merge"
  input: "Drop1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_41"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_40:1"
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
  name: "training/TFOptimizer/gradients/zeros_40/Const"
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
  name: "training/TFOptimizer/gradients/zeros_40"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_41"
  input: "training/TFOptimizer/gradients/zeros_40/Const"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop1/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_40"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop1/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop1/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop1/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Neg"
  input: "Drop1/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv_1"
  input: "Drop1/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_41"
  op: "Switch"
  input: "Norm1/cond/Merge"
  input: "Drop1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_42"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_41"
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
  name: "training/TFOptimizer/gradients/zeros_41/Const"
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
  name: "training/TFOptimizer/gradients/zeros_41"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_42"
  input: "training/TFOptimizer/gradients/zeros_41/Const"
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
  name: "training/TFOptimizer/gradients/Drop1/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_41"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_21"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop1/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_21"
  input: "Norm1/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm1/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop1/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_40"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_41"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_42"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_43"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm1/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm1/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_44"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_45"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_46"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_47"
  op: "ZerosLike"
  input: "Norm1/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm1/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm1/cond/FusedBatchNorm/Switch:1"
  input: "Norm1/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm1/cond/FusedBatchNorm:3"
  input: "Norm1/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_42"
  op: "Switch"
  input: "Conv1/BiasAdd"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_43"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_42:1"
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
  name: "training/TFOptimizer/gradients/zeros_42/Const"
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
  name: "training/TFOptimizer/gradients/zeros_42"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_43"
  input: "training/TFOptimizer/gradients/zeros_42/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_42"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_43"
  op: "Switch"
  input: "Norm1/gamma/read"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_44"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_43:1"
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
  name: "training/TFOptimizer/gradients/zeros_43/Const"
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
  name: "training/TFOptimizer/gradients/zeros_43"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_44"
  input: "training/TFOptimizer/gradients/zeros_43/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_43"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_44"
  op: "Switch"
  input: "Norm1/beta/read"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_45"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_44:1"
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
  name: "training/TFOptimizer/gradients/zeros_44/Const"
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
  name: "training/TFOptimizer/gradients/zeros_44"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_45"
  input: "training/TFOptimizer/gradients/zeros_44/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_44"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_45"
  op: "Switch"
  input: "Conv1/BiasAdd"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_46"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_45"
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
  name: "training/TFOptimizer/gradients/zeros_45/Const"
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
  name: "training/TFOptimizer/gradients/zeros_45"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_46"
  input: "training/TFOptimizer/gradients/zeros_45/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_45"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_46"
  op: "Switch"
  input: "Norm1/gamma/read"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_47"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_46"
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
  name: "training/TFOptimizer/gradients/zeros_46/Const"
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
  name: "training/TFOptimizer/gradients/zeros_46"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_47"
  input: "training/TFOptimizer/gradients/zeros_46/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_46"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_47"
  op: "Switch"
  input: "Norm1/beta/read"
  input: "Norm1/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_48"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_47"
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
  name: "training/TFOptimizer/gradients/zeros_47/Const"
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
  name: "training/TFOptimizer/gradients/zeros_47"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_48"
  input: "training/TFOptimizer/gradients/zeros_47/Const"
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
  name: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_47"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_22"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/AddN_22"
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
  name: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/AddN_22"
  input: "^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/AddN_22"
  input: "^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad"
  input: "^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_23"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_24"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm1/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN"
  op: "ShapeN"
  input: "Relu0/Relu"
  input: "Conv1/kernel/read"
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
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Const"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput"
  op: "Conv2DBackpropInput"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN"
  input: "Conv1/kernel/read"
  input: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter"
  op: "Conv2DBackpropFilter"
  input: "Relu0/Relu"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Const"
  input: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency"
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
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter"
}
node {
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput"
  input: "^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter"
  input: "^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Relu0/Relu_grad/ReluGrad"
  op: "ReluGrad"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency"
  input: "Relu0/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/Relu0/Relu_grad/ReluGrad"
  input: "Drop0/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Relu0/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop0/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu0/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Relu0/Relu_grad/ReluGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape"
  op: "Shape"
  input: "Drop0/cond/dropout/div"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "Drop0/cond/dropout/Floor"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/control_dependency_1"
  input: "Drop0/cond/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Mul"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Mul_1"
  op: "Mul"
  input: "Drop0/cond/dropout/div"
  input: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Mul_1"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_48"
  op: "Switch"
  input: "Norm0/cond/Merge"
  input: "Drop0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_49"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_48:1"
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
  name: "training/TFOptimizer/gradients/zeros_48/Const"
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
  name: "training/TFOptimizer/gradients/zeros_48"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_49"
  input: "training/TFOptimizer/gradients/zeros_48/Const"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Drop0/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_48"
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
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape"
  op: "Shape"
  input: "Drop0/cond/dropout/Shape/Switch:1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/control_dependency"
  input: "Drop0/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Sum"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/BroadcastGradientArgs"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Neg"
  op: "Neg"
  input: "Drop0/cond/dropout/Shape/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv_1"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Neg"
  input: "Drop0/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv_2"
  op: "RealDiv"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv_1"
  input: "Drop0/cond/dropout/keep_prob"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/mul"
  op: "Mul"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/mul_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/RealDiv_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Sum_1"
  op: "Sum"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/mul"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/BroadcastGradientArgs:1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape_1"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Sum_1"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Shape_1"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape_1"
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape_1"
  input: "^training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_49"
  op: "Switch"
  input: "Norm0/cond/Merge"
  input: "Drop0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_50"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_49"
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
  name: "training/TFOptimizer/gradients/zeros_49/Const"
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
  name: "training/TFOptimizer/gradients/zeros_49"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_50"
  input: "training/TFOptimizer/gradients/zeros_49/Const"
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
  name: "training/TFOptimizer/gradients/Drop0/cond/dropout/Shape/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_49"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/div_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_25"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Drop0/cond/dropout/Shape/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/cond_grad"
  op: "Switch"
  input: "training/TFOptimizer/gradients/AddN_25"
  input: "Norm0/cond/pred_id"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm0/cond/Merge_grad/cond_grad"
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/cond_grad"
  input: "^training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/cond_grad:1"
  input: "^training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Drop0/cond/Identity/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_48"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_49"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm_1:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_50"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm_1:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_51"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm_1:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose"
  op: "Transpose"
  input: "Norm0/cond/FusedBatchNorm_1/Switch"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_1/perm"
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
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_1"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_1"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_1"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_3"
  input: "Norm0/cond/FusedBatchNorm_1/Switch_4"
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
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2/perm"
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
        tensor_content: "\000\000\000\000\003\000\000\000\001\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2"
  op: "Transpose"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2"
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/transpose_2"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_52"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_53"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm:2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_54"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm:3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/zeros_like_55"
  op: "ZerosLike"
  input: "Norm0/cond/FusedBatchNorm:4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  op: "FusedBatchNormGrad"
  input: "training/TFOptimizer/gradients/Norm0/cond/Merge_grad/tuple/control_dependency_1"
  input: "Norm0/cond/FusedBatchNorm/Switch:1"
  input: "Norm0/cond/FusedBatchNorm/Switch_1:1"
  input: "Norm0/cond/FusedBatchNorm:3"
  input: "Norm0/cond/FusedBatchNorm:4"
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
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: true
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
  op: "NoOp"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_3"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_4"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4"
  input: "^training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/group_deps"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/FusedBatchNormGrad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Switch_50"
  op: "Switch"
  input: "Pad0/Pad"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_51"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_50:1"
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
  name: "training/TFOptimizer/gradients/zeros_50/Const"
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
  name: "training/TFOptimizer/gradients/zeros_50"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_51"
  input: "training/TFOptimizer/gradients/zeros_50/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency"
  input: "training/TFOptimizer/gradients/zeros_50"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_51"
  op: "Switch"
  input: "Norm0/gamma/read"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_52"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_51:1"
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
  name: "training/TFOptimizer/gradients/zeros_51/Const"
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
  name: "training/TFOptimizer/gradients/zeros_51"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_52"
  input: "training/TFOptimizer/gradients/zeros_51/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1"
  input: "training/TFOptimizer/gradients/zeros_51"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_52"
  op: "Switch"
  input: "Norm0/beta/read"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_53"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_52:1"
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
  name: "training/TFOptimizer/gradients/zeros_52/Const"
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
  name: "training/TFOptimizer/gradients/zeros_52"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_53"
  input: "training/TFOptimizer/gradients/zeros_52/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2"
  input: "training/TFOptimizer/gradients/zeros_52"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_53"
  op: "Switch"
  input: "Pad0/Pad"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_54"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_53"
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
  name: "training/TFOptimizer/gradients/zeros_53/Const"
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
  name: "training/TFOptimizer/gradients/zeros_53"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_54"
  input: "training/TFOptimizer/gradients/zeros_53/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_53"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_54"
  op: "Switch"
  input: "Norm0/gamma/read"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_55"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_54"
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
  name: "training/TFOptimizer/gradients/zeros_54/Const"
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
  name: "training/TFOptimizer/gradients/zeros_54"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_55"
  input: "training/TFOptimizer/gradients/zeros_54/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_54"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_1"
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
}
node {
  name: "training/TFOptimizer/gradients/Switch_55"
  op: "Switch"
  input: "Norm0/beta/read"
  input: "Norm0/cond/pred_id"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Shape_56"
  op: "Shape"
  input: "training/TFOptimizer/gradients/Switch_55"
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
  name: "training/TFOptimizer/gradients/zeros_55/Const"
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
  name: "training/TFOptimizer/gradients/zeros_55"
  op: "Fill"
  input: "training/TFOptimizer/gradients/Shape_56"
  input: "training/TFOptimizer/gradients/zeros_55/Const"
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
  name: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
  op: "Merge"
  input: "training/TFOptimizer/gradients/zeros_55"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_grad/tuple/control_dependency_2"
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
}
node {
  name: "training/TFOptimizer/gradients/AddN_26"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Rank"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/stack"
  op: "Pack"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Rank"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/stack/1"
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
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice/begin"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice"
  op: "Slice"
  input: "Pad0/Pad/paddings"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice/begin"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/stack"
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
}
node {
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Reshape/shape"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Reshape"
  op: "Reshape"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Shape"
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
  name: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice_1"
  op: "Slice"
  input: "training/TFOptimizer/gradients/AddN_26"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Reshape"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Shape"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_27"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_1_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/AddN_28"
  op: "AddN"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
  input: "training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm/Switch_2_grad/cond_grad"
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
        s: "loc:@training/TFOptimizer/gradients/Norm0/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad"
      }
    }
  }
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice_1"
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
  input: "^training/TFOptimizer/gradients/Pad0/Pad_grad/Slice_1"
  input: "^training/TFOptimizer/gradients/Input/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "training/TFOptimizer/gradients/Input/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "training/TFOptimizer/gradients/Pad0/Pad_grad/Slice_1"
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
        s: "loc:@training/TFOptimizer/gradients/Pad0/Pad_grad/Slice_1"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
  name: "Norm0/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm0/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm0/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm0/gamma/Adam"
  input: "Norm0/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam/read"
  op: "Identity"
  input: "Norm0/gamma/Adam"
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
        s: "loc:@Norm0/gamma"
      }
    }
  }
}
node {
  name: "Norm0/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm0/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm0/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm0/gamma/Adam_1"
  input: "Norm0/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm0/gamma"
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
  name: "Norm0/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm0/gamma/Adam_1"
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
        s: "loc:@Norm0/gamma"
      }
    }
  }
}
node {
  name: "Norm0/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm0/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm0/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam/Assign"
  op: "Assign"
  input: "Norm0/beta/Adam"
  input: "Norm0/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam/read"
  op: "Identity"
  input: "Norm0/beta/Adam"
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
        s: "loc:@Norm0/beta"
      }
    }
  }
}
node {
  name: "Norm0/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm0/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm0/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm0/beta/Adam_1"
  input: "Norm0/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm0/beta"
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
  name: "Norm0/beta/Adam_1/read"
  op: "Identity"
  input: "Norm0/beta/Adam_1"
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
        s: "loc:@Norm0/beta"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv1/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv1/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv1/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv1/kernel/Adam"
  input: "Conv1/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam/read"
  op: "Identity"
  input: "Conv1/kernel/Adam"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv1/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv1/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv1/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv1/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv1/kernel/Adam_1"
  input: "Conv1/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv1/kernel"
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
  name: "Conv1/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv1/kernel/Adam_1"
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
        s: "loc:@Conv1/kernel"
      }
    }
  }
}
node {
  name: "Conv1/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv1/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv1/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam/Assign"
  op: "Assign"
  input: "Conv1/bias/Adam"
  input: "Conv1/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam/read"
  op: "Identity"
  input: "Conv1/bias/Adam"
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
        s: "loc:@Conv1/bias"
      }
    }
  }
}
node {
  name: "Conv1/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv1/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv1/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv1/bias/Adam_1"
  input: "Conv1/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv1/bias"
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
  name: "Conv1/bias/Adam_1/read"
  op: "Identity"
  input: "Conv1/bias/Adam_1"
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
        s: "loc:@Conv1/bias"
      }
    }
  }
}
node {
  name: "Norm1/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm1/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm1/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm1/gamma/Adam"
  input: "Norm1/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam/read"
  op: "Identity"
  input: "Norm1/gamma/Adam"
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
        s: "loc:@Norm1/gamma"
      }
    }
  }
}
node {
  name: "Norm1/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm1/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm1/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm1/gamma/Adam_1"
  input: "Norm1/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm1/gamma"
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
  name: "Norm1/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm1/gamma/Adam_1"
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
        s: "loc:@Norm1/gamma"
      }
    }
  }
}
node {
  name: "Norm1/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm1/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm1/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam/Assign"
  op: "Assign"
  input: "Norm1/beta/Adam"
  input: "Norm1/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam/read"
  op: "Identity"
  input: "Norm1/beta/Adam"
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
        s: "loc:@Norm1/beta"
      }
    }
  }
}
node {
  name: "Norm1/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm1/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm1/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm1/beta/Adam_1"
  input: "Norm1/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm1/beta"
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
  name: "Norm1/beta/Adam_1/read"
  op: "Identity"
  input: "Norm1/beta/Adam_1"
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
        s: "loc:@Norm1/beta"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv2/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv2/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv2/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv2/kernel/Adam"
  input: "Conv2/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam/read"
  op: "Identity"
  input: "Conv2/kernel/Adam"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv2/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv2/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv2/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv2/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv2/kernel/Adam_1"
  input: "Conv2/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv2/kernel"
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
  name: "Conv2/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv2/kernel/Adam_1"
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
        s: "loc:@Conv2/kernel"
      }
    }
  }
}
node {
  name: "Conv2/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv2/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv2/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam/Assign"
  op: "Assign"
  input: "Conv2/bias/Adam"
  input: "Conv2/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam/read"
  op: "Identity"
  input: "Conv2/bias/Adam"
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
        s: "loc:@Conv2/bias"
      }
    }
  }
}
node {
  name: "Conv2/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv2/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv2/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv2/bias/Adam_1"
  input: "Conv2/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv2/bias"
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
  name: "Conv2/bias/Adam_1/read"
  op: "Identity"
  input: "Conv2/bias/Adam_1"
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
        s: "loc:@Conv2/bias"
      }
    }
  }
}
node {
  name: "Norm2/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm2/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm2/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm2/gamma/Adam"
  input: "Norm2/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam/read"
  op: "Identity"
  input: "Norm2/gamma/Adam"
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
        s: "loc:@Norm2/gamma"
      }
    }
  }
}
node {
  name: "Norm2/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm2/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm2/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm2/gamma/Adam_1"
  input: "Norm2/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm2/gamma"
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
  name: "Norm2/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm2/gamma/Adam_1"
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
        s: "loc:@Norm2/gamma"
      }
    }
  }
}
node {
  name: "Norm2/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm2/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm2/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam/Assign"
  op: "Assign"
  input: "Norm2/beta/Adam"
  input: "Norm2/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam/read"
  op: "Identity"
  input: "Norm2/beta/Adam"
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
        s: "loc:@Norm2/beta"
      }
    }
  }
}
node {
  name: "Norm2/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm2/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm2/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm2/beta/Adam_1"
  input: "Norm2/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm2/beta"
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
  name: "Norm2/beta/Adam_1/read"
  op: "Identity"
  input: "Norm2/beta/Adam_1"
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
        s: "loc:@Norm2/beta"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv3/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv3/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv3/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv3/kernel/Adam"
  input: "Conv3/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam/read"
  op: "Identity"
  input: "Conv3/kernel/Adam"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv3/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv3/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv3/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv3/kernel/Adam_1"
  input: "Conv3/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv3/kernel"
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
  name: "Conv3/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv3/kernel/Adam_1"
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
        s: "loc:@Conv3/kernel"
      }
    }
  }
}
node {
  name: "Conv3/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv3/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv3/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam/Assign"
  op: "Assign"
  input: "Conv3/bias/Adam"
  input: "Conv3/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam/read"
  op: "Identity"
  input: "Conv3/bias/Adam"
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
        s: "loc:@Conv3/bias"
      }
    }
  }
}
node {
  name: "Conv3/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv3/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv3/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv3/bias/Adam_1"
  input: "Conv3/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv3/bias"
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
  name: "Conv3/bias/Adam_1/read"
  op: "Identity"
  input: "Conv3/bias/Adam_1"
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
        s: "loc:@Conv3/bias"
      }
    }
  }
}
node {
  name: "Norm3/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm3/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm3/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm3/gamma/Adam"
  input: "Norm3/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam/read"
  op: "Identity"
  input: "Norm3/gamma/Adam"
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
        s: "loc:@Norm3/gamma"
      }
    }
  }
}
node {
  name: "Norm3/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm3/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm3/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm3/gamma/Adam_1"
  input: "Norm3/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm3/gamma"
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
  name: "Norm3/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm3/gamma/Adam_1"
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
        s: "loc:@Norm3/gamma"
      }
    }
  }
}
node {
  name: "Norm3/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm3/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm3/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam/Assign"
  op: "Assign"
  input: "Norm3/beta/Adam"
  input: "Norm3/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam/read"
  op: "Identity"
  input: "Norm3/beta/Adam"
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
        s: "loc:@Norm3/beta"
      }
    }
  }
}
node {
  name: "Norm3/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm3/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm3/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm3/beta/Adam_1"
  input: "Norm3/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm3/beta"
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
  name: "Norm3/beta/Adam_1/read"
  op: "Identity"
  input: "Norm3/beta/Adam_1"
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
        s: "loc:@Norm3/beta"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv4/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv4/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv4/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv4/kernel/Adam"
  input: "Conv4/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam/read"
  op: "Identity"
  input: "Conv4/kernel/Adam"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv4/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv4/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv4/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv4/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv4/kernel/Adam_1"
  input: "Conv4/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv4/kernel"
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
  name: "Conv4/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv4/kernel/Adam_1"
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
        s: "loc:@Conv4/kernel"
      }
    }
  }
}
node {
  name: "Conv4/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv4/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv4/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam/Assign"
  op: "Assign"
  input: "Conv4/bias/Adam"
  input: "Conv4/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam/read"
  op: "Identity"
  input: "Conv4/bias/Adam"
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
        s: "loc:@Conv4/bias"
      }
    }
  }
}
node {
  name: "Conv4/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv4/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv4/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv4/bias/Adam_1"
  input: "Conv4/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv4/bias"
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
  name: "Conv4/bias/Adam_1/read"
  op: "Identity"
  input: "Conv4/bias/Adam_1"
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
        s: "loc:@Conv4/bias"
      }
    }
  }
}
node {
  name: "Norm4/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm4/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm4/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm4/gamma/Adam"
  input: "Norm4/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam/read"
  op: "Identity"
  input: "Norm4/gamma/Adam"
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
        s: "loc:@Norm4/gamma"
      }
    }
  }
}
node {
  name: "Norm4/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm4/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm4/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm4/gamma/Adam_1"
  input: "Norm4/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm4/gamma"
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
  name: "Norm4/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm4/gamma/Adam_1"
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
        s: "loc:@Norm4/gamma"
      }
    }
  }
}
node {
  name: "Norm4/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm4/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm4/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam/Assign"
  op: "Assign"
  input: "Norm4/beta/Adam"
  input: "Norm4/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam/read"
  op: "Identity"
  input: "Norm4/beta/Adam"
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
        s: "loc:@Norm4/beta"
      }
    }
  }
}
node {
  name: "Norm4/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm4/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm4/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm4/beta/Adam_1"
  input: "Norm4/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm4/beta"
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
  name: "Norm4/beta/Adam_1/read"
  op: "Identity"
  input: "Norm4/beta/Adam_1"
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
        s: "loc:@Norm4/beta"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv5/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv5/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
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
  name: "Conv5/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv5/kernel/Adam"
  input: "Conv5/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam/read"
  op: "Identity"
  input: "Conv5/kernel/Adam"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv5/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv5/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv5/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
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
  name: "Conv5/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv5/kernel/Adam_1"
  input: "Conv5/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv5/kernel"
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
  name: "Conv5/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv5/kernel/Adam_1"
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
        s: "loc:@Conv5/kernel"
      }
    }
  }
}
node {
  name: "Conv5/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv5/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv5/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam/Assign"
  op: "Assign"
  input: "Conv5/bias/Adam"
  input: "Conv5/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam/read"
  op: "Identity"
  input: "Conv5/bias/Adam"
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
        s: "loc:@Conv5/bias"
      }
    }
  }
}
node {
  name: "Conv5/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv5/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv5/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv5/bias/Adam_1"
  input: "Conv5/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv5/bias"
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
  name: "Conv5/bias/Adam_1/read"
  op: "Identity"
  input: "Conv5/bias/Adam_1"
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
        s: "loc:@Conv5/bias"
      }
    }
  }
}
node {
  name: "Norm5/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm5/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm5/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm5/gamma/Adam"
  input: "Norm5/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam/read"
  op: "Identity"
  input: "Norm5/gamma/Adam"
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
        s: "loc:@Norm5/gamma"
      }
    }
  }
}
node {
  name: "Norm5/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm5/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm5/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm5/gamma/Adam_1"
  input: "Norm5/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm5/gamma"
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
  name: "Norm5/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm5/gamma/Adam_1"
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
        s: "loc:@Norm5/gamma"
      }
    }
  }
}
node {
  name: "Norm5/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm5/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm5/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam/Assign"
  op: "Assign"
  input: "Norm5/beta/Adam"
  input: "Norm5/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam/read"
  op: "Identity"
  input: "Norm5/beta/Adam"
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
        s: "loc:@Norm5/beta"
      }
    }
  }
}
node {
  name: "Norm5/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm5/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm5/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm5/beta/Adam_1"
  input: "Norm5/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm5/beta"
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
  name: "Norm5/beta/Adam_1/read"
  op: "Identity"
  input: "Norm5/beta/Adam_1"
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
        s: "loc:@Norm5/beta"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv6/kernel/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv6/kernel/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv6/kernel/Adam/Assign"
  op: "Assign"
  input: "Conv6/kernel/Adam"
  input: "Conv6/kernel/Adam/Initializer/zeros"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam/read"
  op: "Identity"
  input: "Conv6/kernel/Adam"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "Conv6/kernel/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv6/kernel/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv6/kernel/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
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
  name: "Conv6/kernel/Adam_1/Assign"
  op: "Assign"
  input: "Conv6/kernel/Adam_1"
  input: "Conv6/kernel/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv6/kernel"
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
  name: "Conv6/kernel/Adam_1/read"
  op: "Identity"
  input: "Conv6/kernel/Adam_1"
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
        s: "loc:@Conv6/kernel"
      }
    }
  }
}
node {
  name: "Conv6/bias/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam/Initializer/zeros"
  op: "Fill"
  input: "Conv6/bias/Adam/Initializer/zeros/shape_as_tensor"
  input: "Conv6/bias/Adam/Initializer/zeros/Const"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam/Assign"
  op: "Assign"
  input: "Conv6/bias/Adam"
  input: "Conv6/bias/Adam/Initializer/zeros"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam/read"
  op: "Identity"
  input: "Conv6/bias/Adam"
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
        s: "loc:@Conv6/bias"
      }
    }
  }
}
node {
  name: "Conv6/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Conv6/bias/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Conv6/bias/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam_1/Assign"
  op: "Assign"
  input: "Conv6/bias/Adam_1"
  input: "Conv6/bias/Adam_1/Initializer/zeros"
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
        s: "loc:@Conv6/bias"
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
  name: "Conv6/bias/Adam_1/read"
  op: "Identity"
  input: "Conv6/bias/Adam_1"
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
        s: "loc:@Conv6/bias"
      }
    }
  }
}
node {
  name: "Norm6/gamma/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm6/gamma/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm6/gamma/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam/Assign"
  op: "Assign"
  input: "Norm6/gamma/Adam"
  input: "Norm6/gamma/Adam/Initializer/zeros"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam/read"
  op: "Identity"
  input: "Norm6/gamma/Adam"
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
        s: "loc:@Norm6/gamma"
      }
    }
  }
}
node {
  name: "Norm6/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm6/gamma/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm6/gamma/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam_1/Assign"
  op: "Assign"
  input: "Norm6/gamma/Adam_1"
  input: "Norm6/gamma/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm6/gamma"
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
  name: "Norm6/gamma/Adam_1/read"
  op: "Identity"
  input: "Norm6/gamma/Adam_1"
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
        s: "loc:@Norm6/gamma"
      }
    }
  }
}
node {
  name: "Norm6/beta/Adam/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam/Initializer/zeros"
  op: "Fill"
  input: "Norm6/beta/Adam/Initializer/zeros/shape_as_tensor"
  input: "Norm6/beta/Adam/Initializer/zeros/Const"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam/Assign"
  op: "Assign"
  input: "Norm6/beta/Adam"
  input: "Norm6/beta/Adam/Initializer/zeros"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam/read"
  op: "Identity"
  input: "Norm6/beta/Adam"
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
        s: "loc:@Norm6/beta"
      }
    }
  }
}
node {
  name: "Norm6/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam_1/Initializer/zeros/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam_1/Initializer/zeros"
  op: "Fill"
  input: "Norm6/beta/Adam_1/Initializer/zeros/shape_as_tensor"
  input: "Norm6/beta/Adam_1/Initializer/zeros/Const"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam_1"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam_1/Assign"
  op: "Assign"
  input: "Norm6/beta/Adam_1"
  input: "Norm6/beta/Adam_1/Initializer/zeros"
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
        s: "loc:@Norm6/beta"
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
  name: "Norm6/beta/Adam_1/read"
  op: "Identity"
  input: "Norm6/beta/Adam_1"
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
        s: "loc:@Norm6/beta"
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
        tensor_content: "\200\t\000\000i\001\000\000"
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
          size: 2432
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
        tensor_content: "\200\t\000\000i\001\000\000"
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
          size: 2432
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
  name: "training/TFOptimizer/Adam/update_Norm0/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm0/gamma"
  input: "Norm0/gamma/Adam"
  input: "Norm0/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_27"
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
        s: "loc:@Norm0/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm0/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm0/beta"
  input: "Norm0/beta/Adam"
  input: "Norm0/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_28"
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
        s: "loc:@Norm0/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv1/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv1/kernel"
  input: "Conv1/kernel/Adam"
  input: "Conv1/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv1/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv1/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv1/bias"
  input: "Conv1/bias/Adam"
  input: "Conv1/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv1/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm1/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm1/gamma"
  input: "Norm1/gamma/Adam"
  input: "Norm1/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_23"
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
        s: "loc:@Norm1/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm1/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm1/beta"
  input: "Norm1/beta/Adam"
  input: "Norm1/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_24"
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
        s: "loc:@Norm1/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv2/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv2/kernel"
  input: "Conv2/kernel/Adam"
  input: "Conv2/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv2/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv2/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv2/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv2/bias"
  input: "Conv2/bias/Adam"
  input: "Conv2/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv2/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv2/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm2/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm2/gamma"
  input: "Norm2/gamma/Adam"
  input: "Norm2/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_19"
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
        s: "loc:@Norm2/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm2/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm2/beta"
  input: "Norm2/beta/Adam"
  input: "Norm2/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_20"
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
        s: "loc:@Norm2/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv3/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv3/kernel"
  input: "Conv3/kernel/Adam"
  input: "Conv3/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv3/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv3/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv3/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv3/bias"
  input: "Conv3/bias/Adam"
  input: "Conv3/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv3/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv3/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm3/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm3/gamma"
  input: "Norm3/gamma/Adam"
  input: "Norm3/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_15"
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
        s: "loc:@Norm3/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm3/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm3/beta"
  input: "Norm3/beta/Adam"
  input: "Norm3/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_16"
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
        s: "loc:@Norm3/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv4/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv4/kernel"
  input: "Conv4/kernel/Adam"
  input: "Conv4/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv4/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv4/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv4/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv4/bias"
  input: "Conv4/bias/Adam"
  input: "Conv4/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv4/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv4/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm4/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm4/gamma"
  input: "Norm4/gamma/Adam"
  input: "Norm4/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_11"
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
        s: "loc:@Norm4/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm4/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm4/beta"
  input: "Norm4/beta/Adam"
  input: "Norm4/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_12"
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
        s: "loc:@Norm4/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv5/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv5/kernel"
  input: "Conv5/kernel/Adam"
  input: "Conv5/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv5/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv5/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv5/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv5/bias"
  input: "Conv5/bias/Adam"
  input: "Conv5/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv5/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv5/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm5/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm5/gamma"
  input: "Norm5/gamma/Adam"
  input: "Norm5/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_7"
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
        s: "loc:@Norm5/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm5/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm5/beta"
  input: "Norm5/beta/Adam"
  input: "Norm5/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_8"
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
        s: "loc:@Norm5/beta"
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
  name: "training/TFOptimizer/Adam/update_Conv6/kernel/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv6/kernel"
  input: "Conv6/kernel/Adam"
  input: "Conv6/kernel/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv6/Conv2D_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv6/kernel"
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
  name: "training/TFOptimizer/Adam/update_Conv6/bias/ApplyAdam"
  op: "ApplyAdam"
  input: "Conv6/bias"
  input: "Conv6/bias/Adam"
  input: "Conv6/bias/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/Conv6/BiasAdd_grad/tuple/control_dependency_1"
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
        s: "loc:@Conv6/bias"
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
  name: "training/TFOptimizer/Adam/update_Norm6/gamma/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm6/gamma"
  input: "Norm6/gamma/Adam"
  input: "Norm6/gamma/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_3"
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
        s: "loc:@Norm6/gamma"
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
  name: "training/TFOptimizer/Adam/update_Norm6/beta/ApplyAdam"
  op: "ApplyAdam"
  input: "Norm6/beta"
  input: "Norm6/beta/Adam"
  input: "Norm6/beta/Adam_1"
  input: "training/TFOptimizer/beta1_power/read"
  input: "training/TFOptimizer/beta2_power/read"
  input: "training/TFOptimizer/Adam/learning_rate"
  input: "training/TFOptimizer/Adam/beta1"
  input: "training/TFOptimizer/Adam/beta2"
  input: "training/TFOptimizer/Adam/epsilon"
  input: "training/TFOptimizer/gradients/AddN_4"
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
        s: "loc:@Norm6/beta"
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
  input: "^training/TFOptimizer/Adam/update_Norm0/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm0/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/beta/ApplyAdam"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
  input: "^training/TFOptimizer/Adam/update_Norm0/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm0/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/beta/ApplyAdam"
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
        s: "loc:@Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
  input: "^training/TFOptimizer/Adam/update_Norm0/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm0/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv1/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm1/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv2/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm2/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv3/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm3/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv4/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm4/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv5/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm5/beta/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/kernel/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Conv6/bias/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/gamma/ApplyAdam"
  input: "^training/TFOptimizer/Adam/update_Norm6/beta/ApplyAdam"
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
  input: "^Norm1/AssignMovingAvg_1"
  input: "^Norm1/AssignMovingAvg"
  input: "^Norm4/AssignMovingAvg"
  input: "^Norm4/AssignMovingAvg_1"
  input: "^Norm6/AssignMovingAvg"
  input: "^Norm6/AssignMovingAvg_1"
  input: "^Norm2/AssignMovingAvg"
  input: "^Norm2/AssignMovingAvg_1"
  input: "^Norm5/AssignMovingAvg_1"
  input: "^Norm0/AssignMovingAvg"
  input: "^Norm0/AssignMovingAvg_1"
  input: "^Norm3/AssignMovingAvg"
  input: "^Norm3/AssignMovingAvg_1"
  input: "^Norm5/AssignMovingAvg"
}
node {
  name: "group_deps_1"
  op: "NoOp"
  input: "^loss/mul"
  input: "^metrics/acc/Mean"
}
node {
  name: "VarIsInitializedOp"
  op: "VarIsInitializedOp"
  input: "TFOptimizer/iterations"
}
node {
  name: "IsVariableInitialized_44"
  op: "IsVariableInitialized"
  input: "training/TFOptimizer/beta1_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "IsVariableInitialized_45"
  op: "IsVariableInitialized"
  input: "training/TFOptimizer/beta2_power"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "IsVariableInitialized_46"
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
  name: "IsVariableInitialized_47"
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
  name: "IsVariableInitialized_48"
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
  name: "IsVariableInitialized_49"
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
  name: "IsVariableInitialized_50"
  op: "IsVariableInitialized"
  input: "Norm0/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "IsVariableInitialized_51"
  op: "IsVariableInitialized"
  input: "Norm0/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/gamma"
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
  name: "IsVariableInitialized_52"
  op: "IsVariableInitialized"
  input: "Norm0/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "IsVariableInitialized_53"
  op: "IsVariableInitialized"
  input: "Norm0/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm0/beta"
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
  name: "IsVariableInitialized_54"
  op: "IsVariableInitialized"
  input: "Conv1/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
  name: "IsVariableInitialized_55"
  op: "IsVariableInitialized"
  input: "Conv1/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/kernel"
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
  name: "IsVariableInitialized_56"
  op: "IsVariableInitialized"
  input: "Conv1/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "IsVariableInitialized_57"
  op: "IsVariableInitialized"
  input: "Conv1/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv1/bias"
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
  name: "IsVariableInitialized_58"
  op: "IsVariableInitialized"
  input: "Norm1/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "IsVariableInitialized_59"
  op: "IsVariableInitialized"
  input: "Norm1/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/gamma"
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
  name: "IsVariableInitialized_60"
  op: "IsVariableInitialized"
  input: "Norm1/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "IsVariableInitialized_61"
  op: "IsVariableInitialized"
  input: "Norm1/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm1/beta"
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
  name: "IsVariableInitialized_62"
  op: "IsVariableInitialized"
  input: "Conv2/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
  name: "IsVariableInitialized_63"
  op: "IsVariableInitialized"
  input: "Conv2/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/kernel"
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
  name: "IsVariableInitialized_64"
  op: "IsVariableInitialized"
  input: "Conv2/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "IsVariableInitialized_65"
  op: "IsVariableInitialized"
  input: "Conv2/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv2/bias"
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
  name: "IsVariableInitialized_66"
  op: "IsVariableInitialized"
  input: "Norm2/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "IsVariableInitialized_67"
  op: "IsVariableInitialized"
  input: "Norm2/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/gamma"
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
  name: "IsVariableInitialized_68"
  op: "IsVariableInitialized"
  input: "Norm2/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "IsVariableInitialized_69"
  op: "IsVariableInitialized"
  input: "Norm2/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm2/beta"
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
  name: "IsVariableInitialized_70"
  op: "IsVariableInitialized"
  input: "Conv3/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
  name: "IsVariableInitialized_71"
  op: "IsVariableInitialized"
  input: "Conv3/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/kernel"
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
  name: "IsVariableInitialized_72"
  op: "IsVariableInitialized"
  input: "Conv3/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "IsVariableInitialized_73"
  op: "IsVariableInitialized"
  input: "Conv3/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3/bias"
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
  name: "IsVariableInitialized_74"
  op: "IsVariableInitialized"
  input: "Norm3/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "IsVariableInitialized_75"
  op: "IsVariableInitialized"
  input: "Norm3/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/gamma"
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
  name: "IsVariableInitialized_76"
  op: "IsVariableInitialized"
  input: "Norm3/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "IsVariableInitialized_77"
  op: "IsVariableInitialized"
  input: "Norm3/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm3/beta"
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
  name: "IsVariableInitialized_78"
  op: "IsVariableInitialized"
  input: "Conv4/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
  name: "IsVariableInitialized_79"
  op: "IsVariableInitialized"
  input: "Conv4/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/kernel"
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
  name: "IsVariableInitialized_80"
  op: "IsVariableInitialized"
  input: "Conv4/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "IsVariableInitialized_81"
  op: "IsVariableInitialized"
  input: "Conv4/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv4/bias"
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
  name: "IsVariableInitialized_82"
  op: "IsVariableInitialized"
  input: "Norm4/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "IsVariableInitialized_83"
  op: "IsVariableInitialized"
  input: "Norm4/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/gamma"
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
  name: "IsVariableInitialized_84"
  op: "IsVariableInitialized"
  input: "Norm4/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "IsVariableInitialized_85"
  op: "IsVariableInitialized"
  input: "Norm4/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm4/beta"
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
  name: "IsVariableInitialized_86"
  op: "IsVariableInitialized"
  input: "Conv5/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
  name: "IsVariableInitialized_87"
  op: "IsVariableInitialized"
  input: "Conv5/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/kernel"
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
  name: "IsVariableInitialized_88"
  op: "IsVariableInitialized"
  input: "Conv5/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "IsVariableInitialized_89"
  op: "IsVariableInitialized"
  input: "Conv5/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv5/bias"
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
  name: "IsVariableInitialized_90"
  op: "IsVariableInitialized"
  input: "Norm5/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "IsVariableInitialized_91"
  op: "IsVariableInitialized"
  input: "Norm5/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/gamma"
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
  name: "IsVariableInitialized_92"
  op: "IsVariableInitialized"
  input: "Norm5/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "IsVariableInitialized_93"
  op: "IsVariableInitialized"
  input: "Norm5/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm5/beta"
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
  name: "IsVariableInitialized_94"
  op: "IsVariableInitialized"
  input: "Conv6/kernel/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
  name: "IsVariableInitialized_95"
  op: "IsVariableInitialized"
  input: "Conv6/kernel/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/kernel"
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
  name: "IsVariableInitialized_96"
  op: "IsVariableInitialized"
  input: "Conv6/bias/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "IsVariableInitialized_97"
  op: "IsVariableInitialized"
  input: "Conv6/bias/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv6/bias"
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
  name: "IsVariableInitialized_98"
  op: "IsVariableInitialized"
  input: "Norm6/gamma/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "IsVariableInitialized_99"
  op: "IsVariableInitialized"
  input: "Norm6/gamma/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/gamma"
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
  name: "IsVariableInitialized_100"
  op: "IsVariableInitialized"
  input: "Norm6/beta/Adam"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "IsVariableInitialized_101"
  op: "IsVariableInitialized"
  input: "Norm6/beta/Adam_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Norm6/beta"
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
  name: "IsVariableInitialized_102"
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
  name: "IsVariableInitialized_103"
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
  name: "IsVariableInitialized_104"
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
  name: "IsVariableInitialized_105"
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
  input: "^TFOptimizer/iterations/Assign"
  input: "^training/TFOptimizer/beta1_power/Assign"
  input: "^training/TFOptimizer/beta2_power/Assign"
  input: "^Input/kernel/Adam/Assign"
  input: "^Input/kernel/Adam_1/Assign"
  input: "^Input/bias/Adam/Assign"
  input: "^Input/bias/Adam_1/Assign"
  input: "^Norm0/gamma/Adam/Assign"
  input: "^Norm0/gamma/Adam_1/Assign"
  input: "^Norm0/beta/Adam/Assign"
  input: "^Norm0/beta/Adam_1/Assign"
  input: "^Conv1/kernel/Adam/Assign"
  input: "^Conv1/kernel/Adam_1/Assign"
  input: "^Conv1/bias/Adam/Assign"
  input: "^Conv1/bias/Adam_1/Assign"
  input: "^Norm1/gamma/Adam/Assign"
  input: "^Norm1/gamma/Adam_1/Assign"
  input: "^Norm1/beta/Adam/Assign"
  input: "^Norm1/beta/Adam_1/Assign"
  input: "^Conv2/kernel/Adam/Assign"
  input: "^Conv2/kernel/Adam_1/Assign"
  input: "^Conv2/bias/Adam/Assign"
  input: "^Conv2/bias/Adam_1/Assign"
  input: "^Norm2/gamma/Adam/Assign"
  input: "^Norm2/gamma/Adam_1/Assign"
  input: "^Norm2/beta/Adam/Assign"
  input: "^Norm2/beta/Adam_1/Assign"
  input: "^Conv3/kernel/Adam/Assign"
  input: "^Conv3/kernel/Adam_1/Assign"
  input: "^Conv3/bias/Adam/Assign"
  input: "^Conv3/bias/Adam_1/Assign"
  input: "^Norm3/gamma/Adam/Assign"
  input: "^Norm3/gamma/Adam_1/Assign"
  input: "^Norm3/beta/Adam/Assign"
  input: "^Norm3/beta/Adam_1/Assign"
  input: "^Conv4/kernel/Adam/Assign"
  input: "^Conv4/kernel/Adam_1/Assign"
  input: "^Conv4/bias/Adam/Assign"
  input: "^Conv4/bias/Adam_1/Assign"
  input: "^Norm4/gamma/Adam/Assign"
  input: "^Norm4/gamma/Adam_1/Assign"
  input: "^Norm4/beta/Adam/Assign"
  input: "^Norm4/beta/Adam_1/Assign"
  input: "^Conv5/kernel/Adam/Assign"
  input: "^Conv5/kernel/Adam_1/Assign"
  input: "^Conv5/bias/Adam/Assign"
  input: "^Conv5/bias/Adam_1/Assign"
  input: "^Norm5/gamma/Adam/Assign"
  input: "^Norm5/gamma/Adam_1/Assign"
  input: "^Norm5/beta/Adam/Assign"
  input: "^Norm5/beta/Adam_1/Assign"
  input: "^Conv6/kernel/Adam/Assign"
  input: "^Conv6/kernel/Adam_1/Assign"
  input: "^Conv6/bias/Adam/Assign"
  input: "^Conv6/bias/Adam_1/Assign"
  input: "^Norm6/gamma/Adam/Assign"
  input: "^Norm6/gamma/Adam_1/Assign"
  input: "^Norm6/beta/Adam/Assign"
  input: "^Norm6/beta/Adam_1/Assign"
  input: "^Output/kernel/Adam/Assign"
  input: "^Output/kernel/Adam_1/Assign"
  input: "^Output/bias/Adam/Assign"
  input: "^Output/bias/Adam_1/Assign"
}
node {
  name: "group_deps_2"
  op: "NoOp"
  input: "^Output/Softmax"
}
node {
  name: "init_2"
  op: "NoOp"
  input: "^Input/kernel/Assign"
  input: "^Input/bias/Assign"
  input: "^Norm0/gamma/Assign"
  input: "^Norm0/beta/Assign"
  input: "^Norm0/moving_mean/Assign"
  input: "^Norm0/moving_variance/Assign"
  input: "^Conv1/kernel/Assign"
  input: "^Conv1/bias/Assign"
  input: "^Norm1/gamma/Assign"
  input: "^Norm1/beta/Assign"
  input: "^Norm1/moving_mean/Assign"
  input: "^Norm1/moving_variance/Assign"
  input: "^Conv2/kernel/Assign"
  input: "^Conv2/bias/Assign"
  input: "^Norm2/gamma/Assign"
  input: "^Norm2/beta/Assign"
  input: "^Norm2/moving_mean/Assign"
  input: "^Norm2/moving_variance/Assign"
  input: "^Conv3/kernel/Assign"
  input: "^Conv3/bias/Assign"
  input: "^Norm3/gamma/Assign"
  input: "^Norm3/beta/Assign"
  input: "^Norm3/moving_mean/Assign"
  input: "^Norm3/moving_variance/Assign"
  input: "^Conv4/kernel/Assign"
  input: "^Conv4/bias/Assign"
  input: "^Norm4/gamma/Assign"
  input: "^Norm4/beta/Assign"
  input: "^Norm4/moving_mean/Assign"
  input: "^Norm4/moving_variance/Assign"
  input: "^Conv5/kernel/Assign"
  input: "^Conv5/bias/Assign"
  input: "^Norm5/gamma/Assign"
  input: "^Norm5/beta/Assign"
  input: "^Norm5/moving_mean/Assign"
  input: "^Norm5/moving_variance/Assign"
  input: "^Conv6/kernel/Assign"
  input: "^Conv6/bias/Assign"
  input: "^Norm6/gamma/Assign"
  input: "^Norm6/beta/Assign"
  input: "^Norm6/moving_mean/Assign"
  input: "^Norm6/moving_variance/Assign"
  input: "^Output/kernel/Assign"
  input: "^Output/bias/Assign"
  input: "^TFOptimizer/iterations/Assign"
  input: "^training/TFOptimizer/beta1_power/Assign"
  input: "^training/TFOptimizer/beta2_power/Assign"
  input: "^Input/kernel/Adam/Assign"
  input: "^Input/kernel/Adam_1/Assign"
  input: "^Input/bias/Adam/Assign"
  input: "^Input/bias/Adam_1/Assign"
  input: "^Norm0/gamma/Adam/Assign"
  input: "^Norm0/gamma/Adam_1/Assign"
  input: "^Norm0/beta/Adam/Assign"
  input: "^Norm0/beta/Adam_1/Assign"
  input: "^Conv1/kernel/Adam/Assign"
  input: "^Conv1/kernel/Adam_1/Assign"
  input: "^Conv1/bias/Adam/Assign"
  input: "^Conv1/bias/Adam_1/Assign"
  input: "^Norm1/gamma/Adam/Assign"
  input: "^Norm1/gamma/Adam_1/Assign"
  input: "^Norm1/beta/Adam/Assign"
  input: "^Norm1/beta/Adam_1/Assign"
  input: "^Conv2/kernel/Adam/Assign"
  input: "^Conv2/kernel/Adam_1/Assign"
  input: "^Conv2/bias/Adam/Assign"
  input: "^Conv2/bias/Adam_1/Assign"
  input: "^Norm2/gamma/Adam/Assign"
  input: "^Norm2/gamma/Adam_1/Assign"
  input: "^Norm2/beta/Adam/Assign"
  input: "^Norm2/beta/Adam_1/Assign"
  input: "^Conv3/kernel/Adam/Assign"
  input: "^Conv3/kernel/Adam_1/Assign"
  input: "^Conv3/bias/Adam/Assign"
  input: "^Conv3/bias/Adam_1/Assign"
  input: "^Norm3/gamma/Adam/Assign"
  input: "^Norm3/gamma/Adam_1/Assign"
  input: "^Norm3/beta/Adam/Assign"
  input: "^Norm3/beta/Adam_1/Assign"
  input: "^Conv4/kernel/Adam/Assign"
  input: "^Conv4/kernel/Adam_1/Assign"
  input: "^Conv4/bias/Adam/Assign"
  input: "^Conv4/bias/Adam_1/Assign"
  input: "^Norm4/gamma/Adam/Assign"
  input: "^Norm4/gamma/Adam_1/Assign"
  input: "^Norm4/beta/Adam/Assign"
  input: "^Norm4/beta/Adam_1/Assign"
  input: "^Conv5/kernel/Adam/Assign"
  input: "^Conv5/kernel/Adam_1/Assign"
  input: "^Conv5/bias/Adam/Assign"
  input: "^Conv5/bias/Adam_1/Assign"
  input: "^Norm5/gamma/Adam/Assign"
  input: "^Norm5/gamma/Adam_1/Assign"
  input: "^Norm5/beta/Adam/Assign"
  input: "^Norm5/beta/Adam_1/Assign"
  input: "^Conv6/kernel/Adam/Assign"
  input: "^Conv6/kernel/Adam_1/Assign"
  input: "^Conv6/bias/Adam/Assign"
  input: "^Conv6/bias/Adam_1/Assign"
  input: "^Norm6/gamma/Adam/Assign"
  input: "^Norm6/gamma/Adam_1/Assign"
  input: "^Norm6/beta/Adam/Assign"
  input: "^Norm6/beta/Adam_1/Assign"
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
            size: 107
          }
        }
        string_val: "Conv1/bias"
        string_val: "Conv1/bias/Adam"
        string_val: "Conv1/bias/Adam_1"
        string_val: "Conv1/kernel"
        string_val: "Conv1/kernel/Adam"
        string_val: "Conv1/kernel/Adam_1"
        string_val: "Conv2/bias"
        string_val: "Conv2/bias/Adam"
        string_val: "Conv2/bias/Adam_1"
        string_val: "Conv2/kernel"
        string_val: "Conv2/kernel/Adam"
        string_val: "Conv2/kernel/Adam_1"
        string_val: "Conv3/bias"
        string_val: "Conv3/bias/Adam"
        string_val: "Conv3/bias/Adam_1"
        string_val: "Conv3/kernel"
        string_val: "Conv3/kernel/Adam"
        string_val: "Conv3/kernel/Adam_1"
        string_val: "Conv4/bias"
        string_val: "Conv4/bias/Adam"
        string_val: "Conv4/bias/Adam_1"
        string_val: "Conv4/kernel"
        string_val: "Conv4/kernel/Adam"
        string_val: "Conv4/kernel/Adam_1"
        string_val: "Conv5/bias"
        string_val: "Conv5/bias/Adam"
        string_val: "Conv5/bias/Adam_1"
        string_val: "Conv5/kernel"
        string_val: "Conv5/kernel/Adam"
        string_val: "Conv5/kernel/Adam_1"
        string_val: "Conv6/bias"
        string_val: "Conv6/bias/Adam"
        string_val: "Conv6/bias/Adam_1"
        string_val: "Conv6/kernel"
        string_val: "Conv6/kernel/Adam"
        string_val: "Conv6/kernel/Adam_1"
        string_val: "Input/bias"
        string_val: "Input/bias/Adam"
        string_val: "Input/bias/Adam_1"
        string_val: "Input/kernel"
        string_val: "Input/kernel/Adam"
        string_val: "Input/kernel/Adam_1"
        string_val: "Norm0/beta"
        string_val: "Norm0/beta/Adam"
        string_val: "Norm0/beta/Adam_1"
        string_val: "Norm0/gamma"
        string_val: "Norm0/gamma/Adam"
        string_val: "Norm0/gamma/Adam_1"
        string_val: "Norm0/moving_mean"
        string_val: "Norm0/moving_variance"
        string_val: "Norm1/beta"
        string_val: "Norm1/beta/Adam"
        string_val: "Norm1/beta/Adam_1"
        string_val: "Norm1/gamma"
        string_val: "Norm1/gamma/Adam"
        string_val: "Norm1/gamma/Adam_1"
        string_val: "Norm1/moving_mean"
        string_val: "Norm1/moving_variance"
        string_val: "Norm2/beta"
        string_val: "Norm2/beta/Adam"
        string_val: "Norm2/beta/Adam_1"
        string_val: "Norm2/gamma"
        string_val: "Norm2/gamma/Adam"
        string_val: "Norm2/gamma/Adam_1"
        string_val: "Norm2/moving_mean"
        string_val: "Norm2/moving_variance"
        string_val: "Norm3/beta"
        string_val: "Norm3/beta/Adam"
        string_val: "Norm3/beta/Adam_1"
        string_val: "Norm3/gamma"
        string_val: "Norm3/gamma/Adam"
        string_val: "Norm3/gamma/Adam_1"
        string_val: "Norm3/moving_mean"
        string_val: "Norm3/moving_variance"
        string_val: "Norm4/beta"
        string_val: "Norm4/beta/Adam"
        string_val: "Norm4/beta/Adam_1"
        string_val: "Norm4/gamma"
        string_val: "Norm4/gamma/Adam"
        string_val: "Norm4/gamma/Adam_1"
        string_val: "Norm4/moving_mean"
        string_val: "Norm4/moving_variance"
        string_val: "Norm5/beta"
        string_val: "Norm5/beta/Adam"
        string_val: "Norm5/beta/Adam_1"
        string_val: "Norm5/gamma"
        string_val: "Norm5/gamma/Adam"
        string_val: "Norm5/gamma/Adam_1"
        string_val: "Norm5/moving_mean"
        string_val: "Norm5/moving_variance"
        string_val: "Norm6/beta"
        string_val: "Norm6/beta/Adam"
        string_val: "Norm6/beta/Adam_1"
        string_val: "Norm6/gamma"
        string_val: "Norm6/gamma/Adam"
        string_val: "Norm6/gamma/Adam_1"
        string_val: "Norm6/moving_mean"
        string_val: "Norm6/moving_variance"
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
            size: 107
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
  input: "Conv1/bias"
  input: "Conv1/bias/Adam"
  input: "Conv1/bias/Adam_1"
  input: "Conv1/kernel"
  input: "Conv1/kernel/Adam"
  input: "Conv1/kernel/Adam_1"
  input: "Conv2/bias"
  input: "Conv2/bias/Adam"
  input: "Conv2/bias/Adam_1"
  input: "Conv2/kernel"
  input: "Conv2/kernel/Adam"
  input: "Conv2/kernel/Adam_1"
  input: "Conv3/bias"
  input: "Conv3/bias/Adam"
  input: "Conv3/bias/Adam_1"
  input: "Conv3/kernel"
  input: "Conv3/kernel/Adam"
  input: "Conv3/kernel/Adam_1"
  input: "Conv4/bias"
  input: "Conv4/bias/Adam"
  input: "Conv4/bias/Adam_1"
  input: "Conv4/kernel"
  input: "Conv4/kernel/Adam"
  input: "Conv4/kernel/Adam_1"
  input: "Conv5/bias"
  input: "Conv5/bias/Adam"
  input: "Conv5/bias/Adam_1"
  input: "Conv5/kernel"
  input: "Conv5/kernel/Adam"
  input: "Conv5/kernel/Adam_1"
  input: "Conv6/bias"
  input: "Conv6/bias/Adam"
  input: "Conv6/bias/Adam_1"
  input: "Conv6/kernel"
  input: "Conv6/kernel/Adam"
  input: "Conv6/kernel/Adam_1"
  input: "Input/bias"
  input: "Input/bias/Adam"
  input: "Input/bias/Adam_1"
  input: "Input/kernel"
  input: "Input/kernel/Adam"
  input: "Input/kernel/Adam_1"
  input: "Norm0/beta"
  input: "Norm0/beta/Adam"
  input: "Norm0/beta/Adam_1"
  input: "Norm0/gamma"
  input: "Norm0/gamma/Adam"
  input: "Norm0/gamma/Adam_1"
  input: "Norm0/moving_mean"
  input: "Norm0/moving_variance"
  input: "Norm1/beta"
  input: "Norm1/beta/Adam"
  input: "Norm1/beta/Adam_1"
  input: "Norm1/gamma"
  input: "Norm1/gamma/Adam"
  input: "Norm1/gamma/Adam_1"
  input: "Norm1/moving_mean"
  input: "Norm1/moving_variance"
  input: "Norm2/beta"
  input: "Norm2/beta/Adam"
  input: "Norm2/beta/Adam_1"
  input: "Norm2/gamma"
  input: "Norm2/gamma/Adam"
  input: "Norm2/gamma/Adam_1"
  input: "Norm2/moving_mean"
  input: "Norm2/moving_variance"
  input: "Norm3/beta"
  input: "Norm3/beta/Adam"
  input: "Norm3/beta/Adam_1"
  input: "Norm3/gamma"
  input: "Norm3/gamma/Adam"
  input: "Norm3/gamma/Adam_1"
  input: "Norm3/moving_mean"
  input: "Norm3/moving_variance"
  input: "Norm4/beta"
  input: "Norm4/beta/Adam"
  input: "Norm4/beta/Adam_1"
  input: "Norm4/gamma"
  input: "Norm4/gamma/Adam"
  input: "Norm4/gamma/Adam_1"
  input: "Norm4/moving_mean"
  input: "Norm4/moving_variance"
  input: "Norm5/beta"
  input: "Norm5/beta/Adam"
  input: "Norm5/beta/Adam_1"
  input: "Norm5/gamma"
  input: "Norm5/gamma/Adam"
  input: "Norm5/gamma/Adam_1"
  input: "Norm5/moving_mean"
  input: "Norm5/moving_variance"
  input: "Norm6/beta"
  input: "Norm6/beta/Adam"
  input: "Norm6/beta/Adam_1"
  input: "Norm6/gamma"
  input: "Norm6/gamma/Adam"
  input: "Norm6/gamma/Adam_1"
  input: "Norm6/moving_mean"
  input: "Norm6/moving_variance"
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
            size: 107
          }
        }
        string_val: "Conv1/bias"
        string_val: "Conv1/bias/Adam"
        string_val: "Conv1/bias/Adam_1"
        string_val: "Conv1/kernel"
        string_val: "Conv1/kernel/Adam"
        string_val: "Conv1/kernel/Adam_1"
        string_val: "Conv2/bias"
        string_val: "Conv2/bias/Adam"
        string_val: "Conv2/bias/Adam_1"
        string_val: "Conv2/kernel"
        string_val: "Conv2/kernel/Adam"
        string_val: "Conv2/kernel/Adam_1"
        string_val: "Conv3/bias"
        string_val: "Conv3/bias/Adam"
        string_val: "Conv3/bias/Adam_1"
        string_val: "Conv3/kernel"
        string_val: "Conv3/kernel/Adam"
        string_val: "Conv3/kernel/Adam_1"
        string_val: "Conv4/bias"
        string_val: "Conv4/bias/Adam"
        string_val: "Conv4/bias/Adam_1"
        string_val: "Conv4/kernel"
        string_val: "Conv4/kernel/Adam"
        string_val: "Conv4/kernel/Adam_1"
        string_val: "Conv5/bias"
        string_val: "Conv5/bias/Adam"
        string_val: "Conv5/bias/Adam_1"
        string_val: "Conv5/kernel"
        string_val: "Conv5/kernel/Adam"
        string_val: "Conv5/kernel/Adam_1"
        string_val: "Conv6/bias"
        string_val: "Conv6/bias/Adam"
        string_val: "Conv6/bias/Adam_1"
        string_val: "Conv6/kernel"
        string_val: "Conv6/kernel/Adam"
        string_val: "Conv6/kernel/Adam_1"
        string_val: "Input/bias"
        string_val: "Input/bias/Adam"
        string_val: "Input/bias/Adam_1"
        string_val: "Input/kernel"
        string_val: "Input/kernel/Adam"
        string_val: "Input/kernel/Adam_1"
        string_val: "Norm0/beta"
        string_val: "Norm0/beta/Adam"
        string_val: "Norm0/beta/Adam_1"
        string_val: "Norm0/gamma"
        string_val: "Norm0/gamma/Adam"
        string_val: "Norm0/gamma/Adam_1"
        string_val: "Norm0/moving_mean"
        string_val: "Norm0/moving_variance"
        string_val: "Norm1/beta"
        string_val: "Norm1/beta/Adam"
        string_val: "Norm1/beta/Adam_1"
        string_val: "Norm1/gamma"
        string_val: "Norm1/gamma/Adam"
        string_val: "Norm1/gamma/Adam_1"
        string_val: "Norm1/moving_mean"
        string_val: "Norm1/moving_variance"
        string_val: "Norm2/beta"
        string_val: "Norm2/beta/Adam"
        string_val: "Norm2/beta/Adam_1"
        string_val: "Norm2/gamma"
        string_val: "Norm2/gamma/Adam"
        string_val: "Norm2/gamma/Adam_1"
        string_val: "Norm2/moving_mean"
        string_val: "Norm2/moving_variance"
        string_val: "Norm3/beta"
        string_val: "Norm3/beta/Adam"
        string_val: "Norm3/beta/Adam_1"
        string_val: "Norm3/gamma"
        string_val: "Norm3/gamma/Adam"
        string_val: "Norm3/gamma/Adam_1"
        string_val: "Norm3/moving_mean"
        string_val: "Norm3/moving_variance"
        string_val: "Norm4/beta"
        string_val: "Norm4/beta/Adam"
        string_val: "Norm4/beta/Adam_1"
        string_val: "Norm4/gamma"
        string_val: "Norm4/gamma/Adam"
        string_val: "Norm4/gamma/Adam_1"
        string_val: "Norm4/moving_mean"
        string_val: "Norm4/moving_variance"
        string_val: "Norm5/beta"
        string_val: "Norm5/beta/Adam"
        string_val: "Norm5/beta/Adam_1"
        string_val: "Norm5/gamma"
        string_val: "Norm5/gamma/Adam"
        string_val: "Norm5/gamma/Adam_1"
        string_val: "Norm5/moving_mean"
        string_val: "Norm5/moving_variance"
        string_val: "Norm6/beta"
        string_val: "Norm6/beta/Adam"
        string_val: "Norm6/beta/Adam_1"
        string_val: "Norm6/gamma"
        string_val: "Norm6/gamma/Adam"
        string_val: "Norm6/gamma/Adam_1"
        string_val: "Norm6/moving_mean"
        string_val: "Norm6/moving_variance"
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
            size: 107
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
  input: "Conv1/bias"
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
        s: "loc:@Conv1/bias"
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
  input: "Conv1/bias/Adam"
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
        s: "loc:@Conv1/bias"
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
  input: "Conv1/bias/Adam_1"
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
        s: "loc:@Conv1/bias"
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
  input: "Conv1/kernel"
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
        s: "loc:@Conv1/kernel"
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
  input: "Conv1/kernel/Adam"
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
        s: "loc:@Conv1/kernel"
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
  input: "Conv1/kernel/Adam_1"
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
        s: "loc:@Conv1/kernel"
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
  input: "Conv2/bias"
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
        s: "loc:@Conv2/bias"
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
  input: "Conv2/bias/Adam"
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
        s: "loc:@Conv2/bias"
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
  input: "Conv2/bias/Adam_1"
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
        s: "loc:@Conv2/bias"
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
  input: "Conv2/kernel"
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
        s: "loc:@Conv2/kernel"
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
  input: "Conv2/kernel/Adam"
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
        s: "loc:@Conv2/kernel"
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
  input: "Conv2/kernel/Adam_1"
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
        s: "loc:@Conv2/kernel"
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
  name: "save/Assign_12"
  op: "Assign"
  input: "Conv3/bias"
  input: "save/RestoreV2:12"
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
        s: "loc:@Conv3/bias"
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
  input: "Conv3/bias/Adam"
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
        s: "loc:@Conv3/bias"
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
  name: "save/Assign_14"
  op: "Assign"
  input: "Conv3/bias/Adam_1"
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
        s: "loc:@Conv3/bias"
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
  name: "save/Assign_15"
  op: "Assign"
  input: "Conv3/kernel"
  input: "save/RestoreV2:15"
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
        s: "loc:@Conv3/kernel"
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
  name: "save/Assign_16"
  op: "Assign"
  input: "Conv3/kernel/Adam"
  input: "save/RestoreV2:16"
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
        s: "loc:@Conv3/kernel"
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
  name: "save/Assign_17"
  op: "Assign"
  input: "Conv3/kernel/Adam_1"
  input: "save/RestoreV2:17"
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
        s: "loc:@Conv3/kernel"
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
  name: "save/Assign_18"
  op: "Assign"
  input: "Conv4/bias"
  input: "save/RestoreV2:18"
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
        s: "loc:@Conv4/bias"
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
  name: "save/Assign_19"
  op: "Assign"
  input: "Conv4/bias/Adam"
  input: "save/RestoreV2:19"
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
        s: "loc:@Conv4/bias"
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
  name: "save/Assign_20"
  op: "Assign"
  input: "Conv4/bias/Adam_1"
  input: "save/RestoreV2:20"
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
        s: "loc:@Conv4/bias"
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
  name: "save/Assign_21"
  op: "Assign"
  input: "Conv4/kernel"
  input: "save/RestoreV2:21"
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
        s: "loc:@Conv4/kernel"
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
  name: "save/Assign_22"
  op: "Assign"
  input: "Conv4/kernel/Adam"
  input: "save/RestoreV2:22"
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
        s: "loc:@Conv4/kernel"
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
  name: "save/Assign_23"
  op: "Assign"
  input: "Conv4/kernel/Adam_1"
  input: "save/RestoreV2:23"
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
        s: "loc:@Conv4/kernel"
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
  name: "save/Assign_24"
  op: "Assign"
  input: "Conv5/bias"
  input: "save/RestoreV2:24"
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
        s: "loc:@Conv5/bias"
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
  name: "save/Assign_25"
  op: "Assign"
  input: "Conv5/bias/Adam"
  input: "save/RestoreV2:25"
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
        s: "loc:@Conv5/bias"
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
  name: "save/Assign_26"
  op: "Assign"
  input: "Conv5/bias/Adam_1"
  input: "save/RestoreV2:26"
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
        s: "loc:@Conv5/bias"
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
  name: "save/Assign_27"
  op: "Assign"
  input: "Conv5/kernel"
  input: "save/RestoreV2:27"
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
        s: "loc:@Conv5/kernel"
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
  name: "save/Assign_28"
  op: "Assign"
  input: "Conv5/kernel/Adam"
  input: "save/RestoreV2:28"
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
        s: "loc:@Conv5/kernel"
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
  name: "save/Assign_29"
  op: "Assign"
  input: "Conv5/kernel/Adam_1"
  input: "save/RestoreV2:29"
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
        s: "loc:@Conv5/kernel"
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
  name: "save/Assign_30"
  op: "Assign"
  input: "Conv6/bias"
  input: "save/RestoreV2:30"
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
        s: "loc:@Conv6/bias"
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
  name: "save/Assign_31"
  op: "Assign"
  input: "Conv6/bias/Adam"
  input: "save/RestoreV2:31"
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
        s: "loc:@Conv6/bias"
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
  name: "save/Assign_32"
  op: "Assign"
  input: "Conv6/bias/Adam_1"
  input: "save/RestoreV2:32"
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
        s: "loc:@Conv6/bias"
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
  name: "save/Assign_33"
  op: "Assign"
  input: "Conv6/kernel"
  input: "save/RestoreV2:33"
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
        s: "loc:@Conv6/kernel"
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
  name: "save/Assign_34"
  op: "Assign"
  input: "Conv6/kernel/Adam"
  input: "save/RestoreV2:34"
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
        s: "loc:@Conv6/kernel"
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
  name: "save/Assign_35"
  op: "Assign"
  input: "Conv6/kernel/Adam_1"
  input: "save/RestoreV2:35"
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
        s: "loc:@Conv6/kernel"
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
  name: "save/Assign_36"
  op: "Assign"
  input: "Input/bias"
  input: "save/RestoreV2:36"
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
  name: "save/Assign_37"
  op: "Assign"
  input: "Input/bias/Adam"
  input: "save/RestoreV2:37"
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
  name: "save/Assign_38"
  op: "Assign"
  input: "Input/bias/Adam_1"
  input: "save/RestoreV2:38"
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
  name: "save/Assign_39"
  op: "Assign"
  input: "Input/kernel"
  input: "save/RestoreV2:39"
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
  name: "save/Assign_40"
  op: "Assign"
  input: "Input/kernel/Adam"
  input: "save/RestoreV2:40"
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
  name: "save/Assign_41"
  op: "Assign"
  input: "Input/kernel/Adam_1"
  input: "save/RestoreV2:41"
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
  name: "save/Assign_42"
  op: "Assign"
  input: "Norm0/beta"
  input: "save/RestoreV2:42"
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
        s: "loc:@Norm0/beta"
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
  name: "save/Assign_43"
  op: "Assign"
  input: "Norm0/beta/Adam"
  input: "save/RestoreV2:43"
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
        s: "loc:@Norm0/beta"
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
  name: "save/Assign_44"
  op: "Assign"
  input: "Norm0/beta/Adam_1"
  input: "save/RestoreV2:44"
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
        s: "loc:@Norm0/beta"
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
  name: "save/Assign_45"
  op: "Assign"
  input: "Norm0/gamma"
  input: "save/RestoreV2:45"
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
        s: "loc:@Norm0/gamma"
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
  name: "save/Assign_46"
  op: "Assign"
  input: "Norm0/gamma/Adam"
  input: "save/RestoreV2:46"
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
        s: "loc:@Norm0/gamma"
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
  name: "save/Assign_47"
  op: "Assign"
  input: "Norm0/gamma/Adam_1"
  input: "save/RestoreV2:47"
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
        s: "loc:@Norm0/gamma"
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
  name: "save/Assign_48"
  op: "Assign"
  input: "Norm0/moving_mean"
  input: "save/RestoreV2:48"
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
        s: "loc:@Norm0/moving_mean"
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
  name: "save/Assign_49"
  op: "Assign"
  input: "Norm0/moving_variance"
  input: "save/RestoreV2:49"
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
        s: "loc:@Norm0/moving_variance"
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
  name: "save/Assign_50"
  op: "Assign"
  input: "Norm1/beta"
  input: "save/RestoreV2:50"
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
        s: "loc:@Norm1/beta"
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
  name: "save/Assign_51"
  op: "Assign"
  input: "Norm1/beta/Adam"
  input: "save/RestoreV2:51"
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
        s: "loc:@Norm1/beta"
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
  name: "save/Assign_52"
  op: "Assign"
  input: "Norm1/beta/Adam_1"
  input: "save/RestoreV2:52"
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
        s: "loc:@Norm1/beta"
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
  name: "save/Assign_53"
  op: "Assign"
  input: "Norm1/gamma"
  input: "save/RestoreV2:53"
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
        s: "loc:@Norm1/gamma"
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
  name: "save/Assign_54"
  op: "Assign"
  input: "Norm1/gamma/Adam"
  input: "save/RestoreV2:54"
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
        s: "loc:@Norm1/gamma"
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
  name: "save/Assign_55"
  op: "Assign"
  input: "Norm1/gamma/Adam_1"
  input: "save/RestoreV2:55"
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
        s: "loc:@Norm1/gamma"
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
  name: "save/Assign_56"
  op: "Assign"
  input: "Norm1/moving_mean"
  input: "save/RestoreV2:56"
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
        s: "loc:@Norm1/moving_mean"
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
  name: "save/Assign_57"
  op: "Assign"
  input: "Norm1/moving_variance"
  input: "save/RestoreV2:57"
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
        s: "loc:@Norm1/moving_variance"
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
  name: "save/Assign_58"
  op: "Assign"
  input: "Norm2/beta"
  input: "save/RestoreV2:58"
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
        s: "loc:@Norm2/beta"
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
  name: "save/Assign_59"
  op: "Assign"
  input: "Norm2/beta/Adam"
  input: "save/RestoreV2:59"
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
        s: "loc:@Norm2/beta"
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
  name: "save/Assign_60"
  op: "Assign"
  input: "Norm2/beta/Adam_1"
  input: "save/RestoreV2:60"
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
        s: "loc:@Norm2/beta"
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
  name: "save/Assign_61"
  op: "Assign"
  input: "Norm2/gamma"
  input: "save/RestoreV2:61"
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
        s: "loc:@Norm2/gamma"
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
  name: "save/Assign_62"
  op: "Assign"
  input: "Norm2/gamma/Adam"
  input: "save/RestoreV2:62"
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
        s: "loc:@Norm2/gamma"
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
  name: "save/Assign_63"
  op: "Assign"
  input: "Norm2/gamma/Adam_1"
  input: "save/RestoreV2:63"
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
        s: "loc:@Norm2/gamma"
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
  name: "save/Assign_64"
  op: "Assign"
  input: "Norm2/moving_mean"
  input: "save/RestoreV2:64"
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
        s: "loc:@Norm2/moving_mean"
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
  name: "save/Assign_65"
  op: "Assign"
  input: "Norm2/moving_variance"
  input: "save/RestoreV2:65"
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
        s: "loc:@Norm2/moving_variance"
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
  name: "save/Assign_66"
  op: "Assign"
  input: "Norm3/beta"
  input: "save/RestoreV2:66"
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
        s: "loc:@Norm3/beta"
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
  name: "save/Assign_67"
  op: "Assign"
  input: "Norm3/beta/Adam"
  input: "save/RestoreV2:67"
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
        s: "loc:@Norm3/beta"
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
  name: "save/Assign_68"
  op: "Assign"
  input: "Norm3/beta/Adam_1"
  input: "save/RestoreV2:68"
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
        s: "loc:@Norm3/beta"
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
  name: "save/Assign_69"
  op: "Assign"
  input: "Norm3/gamma"
  input: "save/RestoreV2:69"
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
        s: "loc:@Norm3/gamma"
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
  name: "save/Assign_70"
  op: "Assign"
  input: "Norm3/gamma/Adam"
  input: "save/RestoreV2:70"
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
        s: "loc:@Norm3/gamma"
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
  name: "save/Assign_71"
  op: "Assign"
  input: "Norm3/gamma/Adam_1"
  input: "save/RestoreV2:71"
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
        s: "loc:@Norm3/gamma"
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
  name: "save/Assign_72"
  op: "Assign"
  input: "Norm3/moving_mean"
  input: "save/RestoreV2:72"
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
        s: "loc:@Norm3/moving_mean"
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
  name: "save/Assign_73"
  op: "Assign"
  input: "Norm3/moving_variance"
  input: "save/RestoreV2:73"
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
        s: "loc:@Norm3/moving_variance"
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
  name: "save/Assign_74"
  op: "Assign"
  input: "Norm4/beta"
  input: "save/RestoreV2:74"
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
        s: "loc:@Norm4/beta"
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
  name: "save/Assign_75"
  op: "Assign"
  input: "Norm4/beta/Adam"
  input: "save/RestoreV2:75"
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
        s: "loc:@Norm4/beta"
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
  name: "save/Assign_76"
  op: "Assign"
  input: "Norm4/beta/Adam_1"
  input: "save/RestoreV2:76"
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
        s: "loc:@Norm4/beta"
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
  name: "save/Assign_77"
  op: "Assign"
  input: "Norm4/gamma"
  input: "save/RestoreV2:77"
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
        s: "loc:@Norm4/gamma"
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
  name: "save/Assign_78"
  op: "Assign"
  input: "Norm4/gamma/Adam"
  input: "save/RestoreV2:78"
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
        s: "loc:@Norm4/gamma"
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
  name: "save/Assign_79"
  op: "Assign"
  input: "Norm4/gamma/Adam_1"
  input: "save/RestoreV2:79"
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
        s: "loc:@Norm4/gamma"
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
  name: "save/Assign_80"
  op: "Assign"
  input: "Norm4/moving_mean"
  input: "save/RestoreV2:80"
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
        s: "loc:@Norm4/moving_mean"
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
  name: "save/Assign_81"
  op: "Assign"
  input: "Norm4/moving_variance"
  input: "save/RestoreV2:81"
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
        s: "loc:@Norm4/moving_variance"
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
  name: "save/Assign_82"
  op: "Assign"
  input: "Norm5/beta"
  input: "save/RestoreV2:82"
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
        s: "loc:@Norm5/beta"
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
  name: "save/Assign_83"
  op: "Assign"
  input: "Norm5/beta/Adam"
  input: "save/RestoreV2:83"
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
        s: "loc:@Norm5/beta"
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
  name: "save/Assign_84"
  op: "Assign"
  input: "Norm5/beta/Adam_1"
  input: "save/RestoreV2:84"
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
        s: "loc:@Norm5/beta"
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
  name: "save/Assign_85"
  op: "Assign"
  input: "Norm5/gamma"
  input: "save/RestoreV2:85"
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
        s: "loc:@Norm5/gamma"
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
  name: "save/Assign_86"
  op: "Assign"
  input: "Norm5/gamma/Adam"
  input: "save/RestoreV2:86"
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
        s: "loc:@Norm5/gamma"
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
  name: "save/Assign_87"
  op: "Assign"
  input: "Norm5/gamma/Adam_1"
  input: "save/RestoreV2:87"
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
        s: "loc:@Norm5/gamma"
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
  name: "save/Assign_88"
  op: "Assign"
  input: "Norm5/moving_mean"
  input: "save/RestoreV2:88"
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
        s: "loc:@Norm5/moving_mean"
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
  name: "save/Assign_89"
  op: "Assign"
  input: "Norm5/moving_variance"
  input: "save/RestoreV2:89"
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
        s: "loc:@Norm5/moving_variance"
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
  name: "save/Assign_90"
  op: "Assign"
  input: "Norm6/beta"
  input: "save/RestoreV2:90"
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
        s: "loc:@Norm6/beta"
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
  name: "save/Assign_91"
  op: "Assign"
  input: "Norm6/beta/Adam"
  input: "save/RestoreV2:91"
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
        s: "loc:@Norm6/beta"
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
  name: "save/Assign_92"
  op: "Assign"
  input: "Norm6/beta/Adam_1"
  input: "save/RestoreV2:92"
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
        s: "loc:@Norm6/beta"
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
  name: "save/Assign_93"
  op: "Assign"
  input: "Norm6/gamma"
  input: "save/RestoreV2:93"
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
        s: "loc:@Norm6/gamma"
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
  name: "save/Assign_94"
  op: "Assign"
  input: "Norm6/gamma/Adam"
  input: "save/RestoreV2:94"
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
        s: "loc:@Norm6/gamma"
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
  name: "save/Assign_95"
  op: "Assign"
  input: "Norm6/gamma/Adam_1"
  input: "save/RestoreV2:95"
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
        s: "loc:@Norm6/gamma"
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
  name: "save/Assign_96"
  op: "Assign"
  input: "Norm6/moving_mean"
  input: "save/RestoreV2:96"
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
        s: "loc:@Norm6/moving_mean"
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
  name: "save/Assign_97"
  op: "Assign"
  input: "Norm6/moving_variance"
  input: "save/RestoreV2:97"
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
        s: "loc:@Norm6/moving_variance"
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
  name: "save/Assign_98"
  op: "Assign"
  input: "Output/bias"
  input: "save/RestoreV2:98"
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
  name: "save/Assign_99"
  op: "Assign"
  input: "Output/bias/Adam"
  input: "save/RestoreV2:99"
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
  name: "save/Assign_100"
  op: "Assign"
  input: "Output/bias/Adam_1"
  input: "save/RestoreV2:100"
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
  name: "save/Assign_101"
  op: "Assign"
  input: "Output/kernel"
  input: "save/RestoreV2:101"
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
  name: "save/Assign_102"
  op: "Assign"
  input: "Output/kernel/Adam"
  input: "save/RestoreV2:102"
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
  name: "save/Assign_103"
  op: "Assign"
  input: "Output/kernel/Adam_1"
  input: "save/RestoreV2:103"
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
  input: "save/RestoreV2:104"
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
  name: "save/Assign_104"
  op: "Assign"
  input: "training/TFOptimizer/beta1_power"
  input: "save/RestoreV2:105"
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
        s: "loc:@Conv1/bias"
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
  name: "save/Assign_105"
  op: "Assign"
  input: "training/TFOptimizer/beta2_power"
  input: "save/RestoreV2:106"
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
        s: "loc:@Conv1/bias"
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
  input: "^save/Assign_12"
  input: "^save/Assign_13"
  input: "^save/Assign_14"
  input: "^save/Assign_15"
  input: "^save/Assign_16"
  input: "^save/Assign_17"
  input: "^save/Assign_18"
  input: "^save/Assign_19"
  input: "^save/Assign_20"
  input: "^save/Assign_21"
  input: "^save/Assign_22"
  input: "^save/Assign_23"
  input: "^save/Assign_24"
  input: "^save/Assign_25"
  input: "^save/Assign_26"
  input: "^save/Assign_27"
  input: "^save/Assign_28"
  input: "^save/Assign_29"
  input: "^save/Assign_30"
  input: "^save/Assign_31"
  input: "^save/Assign_32"
  input: "^save/Assign_33"
  input: "^save/Assign_34"
  input: "^save/Assign_35"
  input: "^save/Assign_36"
  input: "^save/Assign_37"
  input: "^save/Assign_38"
  input: "^save/Assign_39"
  input: "^save/Assign_40"
  input: "^save/Assign_41"
  input: "^save/Assign_42"
  input: "^save/Assign_43"
  input: "^save/Assign_44"
  input: "^save/Assign_45"
  input: "^save/Assign_46"
  input: "^save/Assign_47"
  input: "^save/Assign_48"
  input: "^save/Assign_49"
  input: "^save/Assign_50"
  input: "^save/Assign_51"
  input: "^save/Assign_52"
  input: "^save/Assign_53"
  input: "^save/Assign_54"
  input: "^save/Assign_55"
  input: "^save/Assign_56"
  input: "^save/Assign_57"
  input: "^save/Assign_58"
  input: "^save/Assign_59"
  input: "^save/Assign_60"
  input: "^save/Assign_61"
  input: "^save/Assign_62"
  input: "^save/Assign_63"
  input: "^save/Assign_64"
  input: "^save/Assign_65"
  input: "^save/Assign_66"
  input: "^save/Assign_67"
  input: "^save/Assign_68"
  input: "^save/Assign_69"
  input: "^save/Assign_70"
  input: "^save/Assign_71"
  input: "^save/Assign_72"
  input: "^save/Assign_73"
  input: "^save/Assign_74"
  input: "^save/Assign_75"
  input: "^save/Assign_76"
  input: "^save/Assign_77"
  input: "^save/Assign_78"
  input: "^save/Assign_79"
  input: "^save/Assign_80"
  input: "^save/Assign_81"
  input: "^save/Assign_82"
  input: "^save/Assign_83"
  input: "^save/Assign_84"
  input: "^save/Assign_85"
  input: "^save/Assign_86"
  input: "^save/Assign_87"
  input: "^save/Assign_88"
  input: "^save/Assign_89"
  input: "^save/Assign_90"
  input: "^save/Assign_91"
  input: "^save/Assign_92"
  input: "^save/Assign_93"
  input: "^save/Assign_94"
  input: "^save/Assign_95"
  input: "^save/Assign_96"
  input: "^save/Assign_97"
  input: "^save/Assign_98"
  input: "^save/Assign_99"
  input: "^save/Assign_100"
  input: "^save/Assign_101"
  input: "^save/Assign_102"
  input: "^save/Assign_103"
  input: "^save/AssignVariableOp"
  input: "^save/Assign_104"
  input: "^save/Assign_105"
}
versions {
  producer: 26
}
