/**
 *Submitted for verification at BscScan.com on 2021-02-26
*/

pragma solidity ^0.5.8;

library SafeMath {

	/**
	* @dev Returns the lowest value of the two integers
	*/
	function min(uint256 a, uint256 b) internal pure returns (uint256) {
		return a < b ? a : b;
	}

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

	function percentageOf(uint256 total, uint256 percentage) internal pure returns (uint256) {
		return div(mul(total, percentage), 100);
	}

	function getPercentage(uint256 total, uint256 piece) internal pure returns (uint256) {
		return div(piece, total);
	}
}

interface TOKEN {
    function totalSupply() external view returns (uint256);
    function balanceOf(address tokenOwner) external view returns (uint256 balance);
    function allowance(address tokenOwner, address spender) external view returns (uint256 remaining);
    function transfer(address to, uint256 tokens) external returns (bool success);
    function approve(address spender, uint256 tokens) external returns (bool success);
    function transferFrom(address from, address to, uint256 tokens) external returns (bool success);
}

contract LaunchPad {
  TOKEN public token;
  address payable public ceoAddress;
  uint256 public tokenPrice = 0;
  uint256 public multiplier = 10 * 1e17;
  uint256 public buyLimit = 0;
  bool public isClosed = false;
  mapping (address => uint256) public boughtTokens;

  event Buy (uint256 amount, uint256 tokens);

  constructor () public {
    token = TOKEN(0x001Ef4385D199454b76527fd91Af3Da8C0a51537);
    ceoAddress = msg.sender;
    buyLimit = SafeMath.mul(50, multiplier);
    tokenPrice = 3000000000000000000; //perBNB
  }

  modifier ceoOnly {
    require(msg.sender == ceoAddress, "Unauthorized");
    _;
  }
  
  function endPresale () external ceoOnly {
    isClosed = true;
  }
  
  function withdrawFunds (uint256 amount) external ceoOnly {
    require(amount <= address(this).balance, "Insufficient funds");
    
    msg.sender.transfer(amount);
  }

  function withdrawTokens (uint256 amount) external ceoOnly {
    require(amount <= token.balanceOf(address(this)), "Insufficient funds");

    token.transfer(msg.sender, amount);
  }
  
  function claimTokens () external {
    require(isClosed == true, "Presale is still live, please wait");
    
    uint256 _tokensToClaim = boughtTokens[msg.sender];
    
    require(_tokensToClaim > 0, 'No tokens to claim');
    
    boughtTokens[msg.sender] = 0;
    token.transfer(msg.sender, _tokensToClaim);
  }
  
  function getTokenBalance () external view returns (uint256) {
    return token.balanceOf(address(this));
  }
  
  function myTokens () external view returns (uint256) {
    return boughtTokens[msg.sender];
  }
  
  function calculateBuy (uint256 amount) public view returns (uint256) {
    if (tokenPrice <= 0 || amount <= 0) {
      return 0;
    }
    uint256 value = SafeMath.mul(amount, multiplier);
    if (value < tokenPrice) {
      return 0;
    }
    return SafeMath.div(value, tokenPrice);
  }

  function buy () external payable {
    require(tokenPrice > 0, "Token price is zero");
    require(msg.value > 0, "Invalid amount");
    require(isClosed == false, "The presale is now closed");

    uint256 tokens = calculateBuy(msg.value);
    uint256 newBoughtTokens = SafeMath.add(tokens, boughtTokens[msg.sender]);

    assert(tokens > 0);
    assert(msg.value <= buyLimit);

    boughtTokens[msg.sender] = newBoughtTokens;

    emit Buy(msg.value, tokens);
  }
}