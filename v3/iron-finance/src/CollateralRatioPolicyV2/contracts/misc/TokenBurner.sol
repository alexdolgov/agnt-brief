// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IUniswapV2Router.sol";
import "../interfaces/IBurntToken.sol";

contract TokenBurner is Ownable, Initializable {
    using SafeERC20 for IERC20;

    struct SwapInfo {
        address router;
        address[] path;
    }
    address public burnController;
    address public target;
    mapping(address => SwapInfo) public swapOptions;
    uint256 private constant swapTimeout = 900; // 15 minutes

    // modifiers

    modifier onlyBurnController {
        require(msg.sender == burnController || msg.sender == owner(), "Only burn controller or owner can trigger");
        _;
    }

    // events

    event TokenBurnt(address indexed token, uint256 amount);

    // constructor
    function initialize(address _target, address _controller) external initializer onlyOwner {
        target = _target;
        burnController = _controller;
    }

    function burn(address _inputToken) external onlyBurnController {
        uint256 _balance = IERC20(_inputToken).balanceOf(address(this));
        require(_balance > 0, "No input token in the burner");
        _swap(_inputToken, target, _balance);
        uint256 _balanceOfTarget = IERC20(target).balanceOf(address(this));
        if (_balanceOfTarget > 0) {
            IBurntToken(target).burn(_balanceOfTarget);
        }
        emit TokenBurnt(target, _balanceOfTarget);
    }

    function _swap(
        address _inputToken,
        address _outputToken,
        uint256 _inputAmount
    ) internal {
        if (_inputAmount == 0) {
            return;
        }
        SwapInfo storage info = swapOptions[_inputToken];
        require(info.router != address(0), "invalid route");
        require(info.path[0] == _inputToken, "invalid path");
        require(info.path[info.path.length - 1] == _outputToken, "invalid path");
        IERC20(_inputToken).safeApprove(info.router, 0);
        IERC20(_inputToken).safeApprove(info.router, _inputAmount);
        IUniswapV2Router _swapRouter = IUniswapV2Router(info.router);
        _swapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(_inputAmount, 0, info.path, address(this), block.timestamp + swapTimeout);
    }

    // ===== OWNERS FUNCTIONS ===============

    function setController(address _controller) external onlyOwner {
        require(_controller != address(0), "Invalid address");
        burnController = _controller;
    }

    function setSwapOptions(
        address _inputToken,
        address _router,
        address[] calldata _path
    ) public onlyOwner {
        require(target != address(0), "Invalid target");
        require(_inputToken != address(0), "Invalid input");
        require(_router != address(0), "Invalid address");
        require(_path.length > 1, "Invalid path");
        require(_path[0] == _inputToken, "Path must start with input token");
        require(_path[_path.length - 1] == target, "Path must end with titan");
        swapOptions[_inputToken] = SwapInfo(_router, _path);
    }
}
