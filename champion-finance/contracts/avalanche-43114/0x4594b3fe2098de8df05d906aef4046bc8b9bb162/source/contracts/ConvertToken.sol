// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./owner/Operator.sol";

contract ConvertToken is Operator {
    using SafeMath for uint256;

    struct Asset {
        bool isAdded;
        uint256 scale;
    }

    uint256 public constant DECIMALS = 6;
    address public constant POL = 0x409968A6E6cb006E8919de46A894138C43Ee1D22;
    bool public isPause = false;
    IERC20 public mainToken;
    mapping(address => Asset) public acceptTokens;

    event Swap(
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB
    );

    constructor(address _mainToken) {
        mainToken = IERC20(_mainToken);
    }

    /*
     * ---------
     * MODIFIERS
     * ---------
     */
    // Only allow a function to be called with a accept tokens
    modifier onlyAcceptToken(address token) {
        require(acceptTokens[token].isAdded, "ConvertToken: not accept this token");
        _;
    }

    modifier onlyOpen() {
        require(isPause == false, "ConvertToken: in pause state");
        _;
    }

    /*
     * ------------------
     * EXTERNAL FUNCTIONS
     * ------------------
     */
    
    function swap(address token, uint256 amount)
        external
        onlyOpen
        onlyAcceptToken(token)
    {
        require(amount > 0, "ConvertToken: invalid swap amount");
        uint256 balance = mainToken.balanceOf(address(this));
        uint256 amountOut = amount.mul(acceptTokens[token].scale).div(1*10**DECIMALS);
        require(balance >= amountOut, "ConvertToken: balance is not enough");
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        mainToken.transfer(msg.sender, amountOut);

        emit Swap(token, address(mainToken), amount, amountOut);
    }

    function setAcceptTokens(address token, uint256 scale, bool isAdded)
        external
        onlyOperator
    {
        acceptTokens[token].isAdded = isAdded;
        acceptTokens[token].scale = scale;
    }

    // set pause state
    function setPause(bool _isPause) external onlyOperator {
        isPause = _isPause;
    }

    function setMainToken(address _mainToken) external onlyOperator {
        mainToken = IERC20(_mainToken);
    }

    function emergencyWithdraw(IERC20 token, uint256 amount)
        external
        onlyOperator
    {
        token.transfer(POL, amount);
    }
}
