var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it should be able to add', function () {
    calculator.previousTotal = 1;
    calculator.add(2);
    assert.equal(calculator.runningTotal, 3)
  });

  it('it should be able to subtract', function () {
    calculator.previousTotal = 6;
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, 2)
  });

  it('it should be able to multiply', function () {
    calculator.previousTotal = 2;
    calculator.multiply(5);
    assert.equal(calculator.runningTotal, 10)
  });

  it('it should be able to divide', function () {
    calculator.previousTotal = 15;
    calculator.divide(5);
    assert.equal(calculator.runningTotal, 3)
  });


  it('it can click multiple numbers', function () {
    calculator.numberClick(1);
    calculator.numberClick(2);
    calculator.numberClick(3);
    assert.strictEqual(calculator.runningTotal, 123)
  })

  it('it can click an operator', function () {
    calculator.operatorClick('+');
    assert.strictEqual(calculator.previousOperator, '+')
  });

  it('it can chain operators together', function () {
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.numberClick(2);
    calculator.operatorClick('*');
    calculator.numberClick(3);
    calculator.operatorClick('=');
    assert.strictEqual(calculator.runningTotal, 9)
  });
});
