function sum(nums) {
  let result = 0;

  for (let i=0; i<arguments[0].length; i++) {
    let el = arguments[0][i];
    result += parseInt(el);
  }

  return result;
}

function sum(...nums) {
  let result = 0;
  let test = Array.from(arguments);

  for (let i=0; i<arguments.length; i++) {
    let el = arguments[i];
    result += parseInt(el);
  }

  return result;
}

function sum(...nums) {
  let result = 0;

  for (let i=0; i< nums.length; i++) {
    let el = nums[i];
    result += parseInt(el);
  }

  return result;
}

// ============================================================================

Function.prototype.myBind = function (context) {
  const fn = this;
  const bindArgs = Array.from(arguments).slice(1);

  return function func() {
    const callArgs = Array.from(arguments);
  return fn.apply(context, bindArgs.concat(callArgs));
  };
};

Function.prototype.myBind = function (context, ...bindArgs) {
  const fn = this;
  return function func(...callArgs) {
  return fn.apply(context, bindArgs.concat(callArgs));
  };
};

Function.prototype.myBind = function (...context) {
  const fn = this;
  return function func(...callArgs) {
  return fn.apply(context[0], context.slice(1).concat(callArgs));
  };
};

// ============================================================================

// n is the number of arguments it needs to return;
function curriedSum(numArgs) {
  let numbers = [];

  return function _curriedSum(num) {
    numbers.push(num);
    if (numbers.length === numArgs) {
      let result = numbers.reduce((acc, value) => acc + value);
      return result;
    }
    else {
      return _curriedSum;
    }
  };
}

Function.prototype.curry = function (numArgs) {
  let args = [];
  let fn = this;

  return function func(el) {
    args.push(el);
    if (args.length === numArgs) {
      return fn(...args);
    } else {
      return func;
    }
  };

};


Function.prototype.curry = function (numArgs) {
  let args = [];
  let fn = this;

  return function func(el) {
    args.push(el);
    if (args.length === numArgs) {
      return fn.apply(null, args);
    } else {
      return func;
    }
  };

};
