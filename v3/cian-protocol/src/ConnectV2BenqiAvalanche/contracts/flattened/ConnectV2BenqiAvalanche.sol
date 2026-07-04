// File: contracts/avalanche/common/interfaces.sol

pragma solidity ^0.7.0;

interface TokenInterface {
    function approve(address, uint256) external;
    function transfer(address, uint) external;
    function transferFrom(address, address, uint) external;
    function deposit() external payable;
    function withdraw(uint) external;
    function balanceOf(address) external view returns (uint);
    function decimals() external view returns (uint);
}

interface MemoryInterface {
    function getUint(uint id) external returns (uint num);
    function setUint(uint id, uint val) external;
}

interface AccountInterface {
    function enable(address) external;
    function disable(address) external;
    function isAuth(address) external view returns (bool);
}

// File: contracts/avalanche/common/stores.sol

pragma solidity ^0.7.0;



abstract contract Stores {

  /**
   * @dev Return avax address
   */
  address constant internal avaxAddr = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  /**
   * @dev Return Wrapped AVAX address
   */
  address constant internal wavaxAddr = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;

  /**
   * @dev Return memory variable address
   */
  MemoryInterface constant internal instaMemory = MemoryInterface(0x3254Ce8f5b1c82431B8f21Df01918342215825C2);

  /**
   * @dev Get Uint value from InstaMemory Contract.
   */
  function getUint(uint getId, uint val) internal returns (uint returnVal) {
    returnVal = getId == 0 ? val : instaMemory.getUint(getId);
  }

  /**
  * @dev Set Uint value in InstaMemory Contract.
  */
  function setUint(uint setId, uint val) virtual internal {
    if (setId != 0) instaMemory.setUint(setId, val);
  }

}

// File: @openzeppelin/contracts/math/SafeMath.sol

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: contracts/avalanche/common/math.sol

pragma solidity ^0.7.0;


contract DSMath {
  uint constant WAD = 10 ** 18;
  uint constant RAY = 10 ** 27;

  function add(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.add(x, y);
  }

  function sub(uint x, uint y) internal virtual pure returns (uint z) {
    z = SafeMath.sub(x, y);
  }

  function mul(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.mul(x, y);
  }

  function div(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.div(x, y);
  }

  function wmul(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.add(SafeMath.mul(x, y), WAD / 2) / WAD;
  }

  function wdiv(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.add(SafeMath.mul(x, WAD), y / 2) / y;
  }

  function rdiv(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.add(SafeMath.mul(x, RAY), y / 2) / y;
  }

  function rmul(uint x, uint y) internal pure returns (uint z) {
    z = SafeMath.add(SafeMath.mul(x, y), RAY / 2) / RAY;
  }

  function toInt(uint x) internal pure returns (int y) {
    y = int(x);
    require(y >= 0, "int-overflow");
  }

  function toRad(uint wad) internal pure returns (uint rad) {
    rad = mul(wad, 10 ** 27);
  }

}

// File: contracts/avalanche/common/basic.sol

pragma solidity ^0.7.0;




abstract contract Basic is DSMath, Stores {

    function convert18ToDec(uint _dec, uint256 _amt) internal pure returns (uint256 amt) {
        amt = (_amt / 10 ** (18 - _dec));
    }

    function convertTo18(uint _dec, uint256 _amt) internal pure returns (uint256 amt) {
        amt = mul(_amt, 10 ** (18 - _dec));
    }

    function getTokenBal(TokenInterface token) internal view returns(uint _amt) {
        _amt = address(token) == avaxAddr ? address(this).balance : token.balanceOf(address(this));
    }

    function getTokensDec(TokenInterface buyAddr, TokenInterface sellAddr) internal view returns(uint buyDec, uint sellDec) {
        buyDec = address(buyAddr) == avaxAddr ?  18 : buyAddr.decimals();
        sellDec = address(sellAddr) == avaxAddr ?  18 : sellAddr.decimals();
    }

    function encodeEvent(string memory eventName, bytes memory eventParam) internal pure returns (bytes memory) {
        return abi.encode(eventName, eventParam);
    }

    function approve(TokenInterface token, address spender, uint256 amount) internal {
        try token.approve(spender, amount) {

        } catch {
            token.approve(spender, 0);
            token.approve(spender, amount);
        }
    }

    function changeAvaxAddress(address buy, address sell) internal pure returns(TokenInterface _buy, TokenInterface _sell){
        _buy = buy == avaxAddr ? TokenInterface(wavaxAddr) : TokenInterface(buy);
        _sell = sell == avaxAddr ? TokenInterface(wavaxAddr) : TokenInterface(sell);
    }

    function convertAvaxToWavax(bool isAvax, TokenInterface token, uint amount) internal {
        if(isAvax) token.deposit{value: amount}();
    }

    function convertWavaxToAvax(bool isAvax, TokenInterface token, uint amount) internal {
       if(isAvax) {
            approve(token, address(token), amount);
            token.withdraw(amount);
        }
    }
}

// File: contracts/avalanche/connectors/benqi/interface.sol

pragma solidity ^0.7.0;

interface QiTokenInterface {
    function mint(uint mintAmount) external returns (uint);
    function redeem(uint redeemTokens) external returns (uint);
    function borrow(uint borrowAmount) external returns (uint);
    function repayBorrow(uint repayAmount) external returns (uint);
    function repayBorrowBehalf(address borrower, uint repayAmount) external returns (uint); // For ARC20
    function liquidateBorrow(address borrower, uint repayAmount, address qiTokenCollateral) external returns (uint);

    function borrowBalanceCurrent(address account) external returns (uint);
    function redeemUnderlying(uint redeemAmount) external returns (uint);
    function exchangeRateCurrent() external returns (uint);

    function balanceOf(address owner) external view returns (uint256 balance);
}

interface QiAVAXInterface {
    function mint() external payable;
    function repayBorrow() external payable;
    function repayBorrowBehalf(address borrower) external payable;
    function liquidateBorrow(address borrower, address qiTokenCollateral) external payable;
}

interface ComptrollerInterface {
    function enterMarkets(address[] calldata qiTokens) external returns (uint[] memory);
    function exitMarket(address qiTokenAddress) external returns (uint);
    function getAssetsIn(address account) external view returns (address[] memory);
    function getAccountLiquidity(address account) external view returns (uint, uint, uint);
    function claimReward(uint8 rewardType, address) external;
}

interface BenqiMappingInterface {
    function qiTokenMapping(string calldata tokenId) external view returns (address);
    function getMapping(string calldata tokenId) external view returns (address, address);
}

// File: contracts/avalanche/connectors/benqi/helpers.sol

pragma solidity ^0.7.0;




abstract contract Helpers is DSMath, Basic {
    /**
     * @dev Benqi Comptroller
     */
    ComptrollerInterface internal constant troller = ComptrollerInterface(0x486Af39519B4Dc9a7fCcd318217352830E8AD9b4);

    /**
     * @dev Benqi Mapping
     */
    BenqiMappingInterface internal constant qiMapping = BenqiMappingInterface(0xe19Fba29ac9BAACc1F584aEcD9C98B4F6fC58ba6);

    /**
     * @dev enter benqi market
     */
    function enterMarket(address qiToken) internal {
        address[] memory markets = troller.getAssetsIn(address(this));
        bool isEntered = false;
        for (uint i = 0; i < markets.length; i++) {
            if (markets[i] == qiToken) {
                isEntered = true;
            }
        }
        if (!isEntered) {
            address[] memory toEnter = new address[](1);
            toEnter[0] = qiToken;
            troller.enterMarkets(toEnter);
        }
    }
}

// File: contracts/avalanche/connectors/benqi/events.sol

pragma solidity ^0.7.0;

contract Events {
    event LogDeposit(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    event LogWithdraw(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    event LogBorrow(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    event LogPayback(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    event LogDepositQiToken(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 qiTokenAmt,
        uint256 getId, 
        uint256 setId
    );

    event LogWithdrawQiToken(
        address indexed token,
        address qiToken,
        uint256 tokenAmt,
        uint256 qiTokenAmt,
        uint256 getId,
        uint256 setId
    );
    
    event LogLiquidate(
        address indexed borrower,
        address indexed tokenToPay,
        address indexed tokenInReturn,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );
}

// File: contracts/avalanche/connectors/benqi/main.sol

pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

/**
 * @title Benqi.
 * @dev Lending & Borrowing.
 */






abstract contract BenqiResolver is Events, Helpers {
    /**
     * @dev Deposit AVAX/ARC20_Token.
     * @notice Deposit a token to Benqi for lending / collaterization.
     * @param token The address of the token to deposit. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
    */
    function depositRaw(
        address token,
        address qiToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);

        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        enterMarket(qiToken);
        if (token == avaxAddr) {
            _amt = _amt == uint(-1) ? address(this).balance : _amt;
            QiAVAXInterface(qiToken).mint{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            _amt = _amt == uint(-1) ? tokenContract.balanceOf(address(this)) : _amt;
            approve(tokenContract, qiToken, _amt);
            require(QiTokenInterface(qiToken).mint(_amt) == 0, "deposit-failed");
        }
        setUint(setId, _amt);

        _eventName = "LogDeposit(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, _amt, getId, setId);
    }

    /**
     * @dev Deposit AVAX/ARC20_Token using the Mapping.
     * @notice Deposit a token to Benqi for lending / collaterization.
     * @param tokenId The token id of the token to deposit.(For eg: AVAX-A)
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
    */
    function deposit(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = depositRaw(token, qiToken, amt, getId, setId);
    }

    /**
     * @dev Withdraw AVAX/ARC20_Token.
     * @notice Withdraw deposited token from Benqi
     * @param token The address of the token to withdraw. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param amt The amount of the token to withdraw. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens withdrawn.
    */
    function withdrawRaw(
        address token,
        address qiToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);
        
        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        QiTokenInterface qiTokenContract = QiTokenInterface(qiToken);
        if (_amt == uint(-1)) {
            TokenInterface tokenContract = TokenInterface(token);
            uint initialBal = token == avaxAddr ? address(this).balance : tokenContract.balanceOf(address(this));
            require(qiTokenContract.redeem(qiTokenContract.balanceOf(address(this))) == 0, "full-withdraw-failed");
            uint finalBal = token == avaxAddr ? address(this).balance : tokenContract.balanceOf(address(this));
            _amt = finalBal - initialBal;
        } else {
            require(qiTokenContract.redeemUnderlying(_amt) == 0, "withdraw-failed");
        }
        setUint(setId, _amt);

        _eventName = "LogWithdraw(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, _amt, getId, setId);
    }

    /**
     * @dev Withdraw AVAX/ARC20_Token using the Mapping.
     * @notice Withdraw deposited token from Benqi
     * @param tokenId The token id of the token to withdraw.(For eg: AVAX-A)
     * @param amt The amount of the token to withdraw. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens withdrawn.
    */
    function withdraw(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = withdrawRaw(token, qiToken, amt, getId, setId);
    }

    /**
     * @dev Borrow AVAX/ARC20_Token.
     * @notice Borrow a token using Benqi
     * @param token The address of the token to borrow. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param amt The amount of the token to borrow.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens borrowed.
    */
    function borrowRaw(
        address token,
        address qiToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);

        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        enterMarket(qiToken);
        require(QiTokenInterface(qiToken).borrow(_amt) == 0, "borrow-failed");
        setUint(setId, _amt);

        _eventName = "LogBorrow(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, _amt, getId, setId);
    }

     /**
     * @dev Borrow AVAX/ARC20_Token using the Mapping.
     * @notice Borrow a token using Benqi
     * @param tokenId The token id of the token to borrow.(For eg: DAI-A)
     * @param amt The amount of the token to borrow.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens borrowed.
    */
    function borrow(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = borrowRaw(token, qiToken, amt, getId, setId);
    }

    /**
     * @dev Payback borrowed AVAX/ARC20_Token.
     * @notice Payback debt owed.
     * @param token The address of the token to payback. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param amt The amount of the token to payback. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens paid back.
    */
    function paybackRaw(
        address token,
        address qiToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);

        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        QiTokenInterface qiTokenContract = QiTokenInterface(qiToken);
        _amt = _amt == uint(-1) ? qiTokenContract.borrowBalanceCurrent(address(this)) : _amt;

        if (token == avaxAddr) {
            require(address(this).balance >= _amt, "not-enough-avax");
            QiAVAXInterface(qiToken).repayBorrow{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            require(tokenContract.balanceOf(address(this)) >= _amt, "not-enough-token");
            approve(tokenContract, qiToken, _amt);
            require(qiTokenContract.repayBorrow(_amt) == 0, "repay-failed.");
        }
        setUint(setId, _amt);

        _eventName = "LogPayback(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, _amt, getId, setId);
    }

    /**
     * @dev Payback borrowed AVAX/ARC20_Token using the Mapping.
     * @notice Payback debt owed.
     * @param tokenId The token id of the token to payback.(For eg: BENQI-A)
     * @param amt The amount of the token to payback. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens paid back.
    */
    function payback(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = paybackRaw(token, qiToken, amt, getId, setId);
    }

    /**
     * @dev Deposit AVAX/ARC20_Token.
     * @notice Same as depositRaw. The only difference is this method stores qiToken amount in set ID.
     * @param token The address of the token to deposit. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of qiTokens received.
    */
    function depositQiTokenRaw(
        address token,
        address qiToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);

        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        enterMarket(qiToken);

        QiTokenInterface qitokenContract = QiTokenInterface(qiToken);
        uint initialBal = qitokenContract.balanceOf(address(this));

        if (token == avaxAddr) {
            _amt = _amt == uint(-1) ? address(this).balance : _amt;
            QiAVAXInterface(qiToken).mint{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            _amt = _amt == uint(-1) ? tokenContract.balanceOf(address(this)) : _amt;
            approve(tokenContract, qiToken, _amt);
            require(qitokenContract.mint(_amt) == 0, "deposit-qitoken-failed.");
        }

        uint _cAmt;

        {
            uint finalBal = qitokenContract.balanceOf(address(this));
            _cAmt = sub(finalBal, initialBal);

            setUint(setId, _cAmt);
        }

        _eventName = "LogDepositQiToken(address,address,uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, _amt, _cAmt, getId, setId);
    }

    /**
     * @dev Deposit AVAX/ARC20_Token using the Mapping.
     * @notice Same as deposit. The only difference is this method stores qiToken amount in set ID.
     * @param tokenId The token id of the token to depositQiToken.(For eg: DAI-A)
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of qiTokens received.
    */
    function depositQiToken(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = depositQiTokenRaw(token, qiToken, amt, getId, setId);
    }

    /**
     * @dev Withdraw QiAVAX/QiARC20_Token using qiToken Amt.
     * @notice Same as withdrawRaw. The only difference is this method fetch qiToken amount in get ID.
     * @param token The address of the token to withdraw. (For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiToken The address of the corresponding qiToken.
     * @param qiTokenAmt The amount of qiTokens to withdraw
     * @param getId ID to retrieve qiTokenAmt 
     * @param setId ID stores the amount of tokens withdrawn.
    */
    function withdrawQiTokenRaw(
        address token,
        address qiToken,
        uint qiTokenAmt,
        uint getId,
        uint setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _cAmt = getUint(getId, qiTokenAmt);
        require(token != address(0) && qiToken != address(0), "invalid token/qitoken address");

        QiTokenInterface qiTokenContract = QiTokenInterface(qiToken);
        TokenInterface tokenContract = TokenInterface(token);
        _cAmt = _cAmt == uint(-1) ? qiTokenContract.balanceOf(address(this)) : _cAmt;

        uint withdrawAmt;
        {
            uint initialBal = token != avaxAddr ? tokenContract.balanceOf(address(this)) : address(this).balance;
            require(qiTokenContract.redeem(_cAmt) == 0, "redeem-failed");
            uint finalBal = token != avaxAddr ? tokenContract.balanceOf(address(this)) : address(this).balance;

            withdrawAmt = sub(finalBal, initialBal);
        }

        setUint(setId, withdrawAmt);

        _eventName = "LogWithdrawQiToken(address,address,uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, qiToken, withdrawAmt, _cAmt, getId, setId);
    }

    /**
     * @dev Withdraw QiAVAX/QiARC20_Token using qiToken Amt & the Mapping.
     * @notice Same as withdraw. The only difference is this method fetch qiToken amount in get ID.
     * @param tokenId The token id of the token to withdraw QiToken.(For eg: AVAX-A)
     * @param qiTokenAmt The amount of qiTokens to withdraw
     * @param getId ID to retrieve qiTokenAmt 
     * @param setId ID stores the amount of tokens withdrawn.
    */
    function withdrawQiToken(
        string calldata tokenId,
        uint qiTokenAmt,
        uint getId,
        uint setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address token, address qiToken) = qiMapping.getMapping(tokenId);
        (_eventName, _eventParam) = withdrawQiTokenRaw(token, qiToken, qiTokenAmt, getId, setId);
    }

    /**
     * @dev Liquidate a position.
     * @notice Liquidate a position.
     * @param borrower Borrower's Address.
     * @param tokenToPay The address of the token to pay for liquidation.(For AVAX: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param qiTokenPay Corresponding qiToken address.
     * @param tokenInReturn The address of the token to return for liquidation.
     * @param qiTokenColl Corresponding qiToken address.
     * @param amt The token amount to pay for liquidation.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of paid for liquidation.
    */
    function liquidateRaw(
        address borrower,
        address tokenToPay,
        address qiTokenPay,
        address tokenInReturn,
        address qiTokenColl,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) public payable returns (string memory _eventName, bytes memory _eventParam) {
        uint _amt = getUint(getId, amt);
        require(tokenToPay != address(0) && qiTokenPay != address(0), "invalid token/qitoken address");
        require(tokenInReturn != address(0) && qiTokenColl != address(0), "invalid token/qitoken address");

        QiTokenInterface qiTokenContract = QiTokenInterface(qiTokenPay);

        {
            (,, uint shortfal) = troller.getAccountLiquidity(borrower);
            require(shortfal != 0, "account-cannot-be-liquidated");
            _amt = _amt == uint(-1) ? qiTokenContract.borrowBalanceCurrent(borrower) : _amt;
        }

        if (tokenToPay == avaxAddr) {
            require(address(this).balance >= _amt, "not-enough-avax");
            QiAVAXInterface(qiTokenPay).liquidateBorrow{value: _amt}(borrower, qiTokenColl);
        } else {
            TokenInterface tokenContract = TokenInterface(tokenToPay);
            require(tokenContract.balanceOf(address(this)) >= _amt, "not-enough-token");
            approve(tokenContract, qiTokenPay, _amt);
            require(qiTokenContract.liquidateBorrow(borrower, _amt, qiTokenColl) == 0, "liquidate-failed");
        }
        
        setUint(setId, _amt);

        _eventName = "LogLiquidate(address,address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(
            address(this),
            tokenToPay,
            tokenInReturn, 
            _amt,
            getId,
            setId
        );
    }

    /**
     * @dev Liquidate a position using the mapping.
     * @notice Liquidate a position using the mapping.
     * @param borrower Borrower's Address.
     * @param tokenIdToPay token id of the token to pay for liquidation.(For eg: AVAX-A)
     * @param tokenIdInReturn token id of the token to return for liquidation.(For eg: USDC-A)
     * @param amt token amount to pay for liquidation.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of paid for liquidation.
    */
    function liquidate(
        address borrower,
        string calldata tokenIdToPay,
        string calldata tokenIdInReturn,
        uint256 amt,
        uint256 getId,
        uint256 setId
    ) external payable returns (string memory _eventName, bytes memory _eventParam) {
        (address tokenToPay, address qiTokenToPay) = qiMapping.getMapping(tokenIdToPay);
        (address tokenInReturn, address qiTokenColl) = qiMapping.getMapping(tokenIdInReturn);

        (_eventName, _eventParam) = liquidateRaw(
            borrower,
            tokenToPay,
            qiTokenToPay,
            tokenInReturn,
            qiTokenColl,
            amt,
            getId,
            setId
        );
    }
}

contract ConnectV2BenqiAvalanche is BenqiResolver {
    string public name = "Benqi-v1";
}
