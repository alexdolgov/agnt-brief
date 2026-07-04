pragma solidity >= 0.5.8;

interface IERC20 {
    function transferFrom(address src, address dst, uint rawAmount) external returns (bool);
}

contract Multisend {
    using SafeMath for uint256;

    function multisend(address payable[]  memory  _contributors, uint256[] memory _balances, address token) public {
        require(_contributors.length == _balances.length, "Number of addresses and values should be same");
        
        uint256 i = 0;
        while (i < _contributors.length) {
           IERC20(token).transferFrom(msg.sender, _contributors[i], _balances[i]);
           i += 1;
        }
    }
}


/**     
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a); 
    return c;
  }
}