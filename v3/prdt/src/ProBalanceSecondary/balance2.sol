//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IWETH9 is IERC20 {
    function deposit() external payable;
    function withdraw(uint256) external;
}

interface IMainContract {
    function injectTreasury() external payable;
}

contract ProBalanceSecondary is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public i_WETH;
    bool public acceptNative;
    mapping(address => bool) public allowedDepositTokens;
    address[] public depositTokens;

    address public mainBalanceAddress;
    address public operator;

    event InjectTreasury(uint256 amount);
    event BalanceAdded(address indexed user, uint256 indexed amount);
    event TokenBalanceAdded(
        address indexed user,
        uint256 indexed amount,
        address indexed token
    );
    event UnwrappedToNative(uint256 amount, address wrappedToken);

    modifier ownerOrOperator() {
        require(msg.sender == owner() || msg.sender == operator, "Not authorized");
        _;
    }

    constructor(
        bool _acceptNative,
        address _weth,
        address[] memory _depositTokens,
        address _operator,
        address _mainBalanceAddress
    ) Ownable(msg.sender) {
        acceptNative = _acceptNative;
        i_WETH = _weth;
        operator = _operator;
        mainBalanceAddress= _mainBalanceAddress;

        for (uint256 i = 0; i < _depositTokens.length; i++) {
            address token = _depositTokens[i];
            require(token != address(0), "token can't be 0");
            allowedDepositTokens[token] = true;
            depositTokens.push(token);
        }
    }

    function addBalance() external payable nonReentrant {
        require(acceptNative, "native not accepted");
        emit BalanceAdded(msg.sender, msg.value);
    }

    function addBalanceForUser(address user) external payable nonReentrant {
        require(acceptNative, "native not accepted");
        emit BalanceAdded(user, msg.value);
    }

    function addTokenBalance(
        address token,
        uint256 amount
    ) external nonReentrant {
        require(allowedDepositTokens[token], "token not accepted");
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        emit TokenBalanceAdded(msg.sender, amount, token);
    }

    function addTokenBalanceForUser(
        address user,
        address token,
        uint256 amount
    ) external nonReentrant {
        require(allowedDepositTokens[token], "token not accepted");
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        emit TokenBalanceAdded(user, amount, token);
    }

    function injectTreasury() external payable nonReentrant {
        emit InjectTreasury(msg.value);
    }

    //OWNER FUNCTIONS
    function setAcceptNative(bool _acceptNative) external onlyOwner {
        acceptNative = _acceptNative;
    }

    function setOperator(address _op) external onlyOwner {
        require(_op != address(0), "cant be address 0");
        operator = _op;
    }

    function setMainBalanceAddress(address _addr) external onlyOwner {
        require(_addr != address(0), "Invalid address");
        mainBalanceAddress = _addr;
    }

    function addDepositToken(address token) external onlyOwner {
        require(token != address(0), "invalid token");
        require(!allowedDepositTokens[token], "already added");
        allowedDepositTokens[token] = true;
        depositTokens.push(token);
    }

    function removeDepositToken(address token) external onlyOwner {
        require(allowedDepositTokens[token], "not allowed");
        allowedDepositTokens[token] = false;

        // Remove from array
        uint256 len = depositTokens.length;
        for (uint256 i = 0; i < len; i++) {
            if (depositTokens[i] == token) {
                depositTokens[i] = depositTokens[len - 1];
                depositTokens.pop();
                break;
            }
        }
    }

    function recoverAmount(uint256 amount) external onlyOwner {
        _transferAmount(msg.sender, amount);
    }

    function recoverToken(
        address tokenAddress,
        uint256 amount
    ) external onlyOwner {
        _transferEthOrToken(tokenAddress, owner(), amount);
    }

    //INTERNAL FUNCTIONS
    function _transferEthOrToken(
        address tokenAddress,
        address _to,
        uint256 _amount
    ) internal {
        if (tokenAddress == address(0)) _transferAmount(_to, _amount);
        else IERC20(tokenAddress).safeTransfer(_to, _amount);
    }

    function _transferAmount(address _to, uint256 _amount) internal {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "TransferHelper: TRANSFER_FAILED");
    }

    function unwrapToNative(address wrappedToken, uint256 amount) external onlyOwner nonReentrant {
        IWETH9 w = IWETH9(wrappedToken);
        w.withdraw(amount);
        emit UnwrappedToNative(amount, wrappedToken);
    }

    function transferAllBalanceToMain() external ownerOrOperator nonReentrant {
        require(mainBalanceAddress != address(0), "mainBalanceAddress not set");

        if (i_WETH != address(0)) {
            uint256 wethBal = IERC20(i_WETH).balanceOf(address(this));
            if (wethBal > 0) {
                IWETH9(i_WETH).withdraw(wethBal);
            }
        }

        uint256 nativeBal = address(this).balance;
        if (nativeBal > 0) {
            IMainContract(mainBalanceAddress).injectTreasury{value: nativeBal}();
        }

        for (uint256 i = 0; i < depositTokens.length; i++) {
            address token = depositTokens[i];

            // Skip unwrapped WETH already handled
            if (token == i_WETH) continue;

            uint256 bal = IERC20(token).balanceOf(address(this));
            if (bal > 0) {
                IERC20(token).safeTransfer(mainBalanceAddress, bal);
            }
        }
    }
}
