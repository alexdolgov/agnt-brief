// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IUniswapV2Router.sol";
import "./utils/ContractGuard.sol";


contract EVICBuyToken is Ownable, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /* ========== CONSTANT VARIABLES ========== */
    IUniswapV2Router private ROUTER;
    
    IERC20 private wethToken;
    IERC20 private evicToken;

    /* ========== INITIALIZER ========== */
    constructor(
        address _router,
        address _wethToken, 
        address _evicToken
    ) {
        require(_wethToken != address(0), "!_wethToken");
        require(_evicToken != address(0), "!_evicToken");

        ROUTER = IUniswapV2Router(_router);
        wethToken = IERC20(_wethToken);
        evicToken = IERC20(_evicToken);
    }

    
    uint private unlocked = 1;
    modifier lock() {
        require(unlocked == 1, 'EVICBuyToken: LOCKED');
        unlocked = 0;
        _;
        unlocked = 1;
    }

    function buyEvicTokenByWeth(
        uint256 _wethAmount,
        uint256 _minAmountEvicOut
    ) external onlyOneBlock lock {
        wethToken.safeTransferFrom(msg.sender, address(this), _wethAmount);
        _approveTokenIfNeeded(address(wethToken));
        address[] memory path = new address[](2);
        path[0] = address(wethToken);
        path[1] = address(evicToken);

        ROUTER.swapExactTokensForTokens(
            _wethAmount, 
            _minAmountEvicOut, 
            path, 
            address(this),
            block.timestamp
        );

        uint256 balanceEvic = evicToken.balanceOf(address(this));
        evicToken.safeTransfer(msg.sender, balanceEvic);
    }

    function getEstimateEvicToken(uint256 _wethAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(wethToken);
        path[1] = address(evicToken);
        uint256[] memory amounts = ROUTER.getAmountsOut(_wethAmount, path);
        return amounts[amounts.length - 1];
    }

    function _approveTokenIfNeeded(address token) private {
        if (IERC20(token).allowance(address(this), address(ROUTER)) == 0) {
            IERC20(token).safeApprove(address(ROUTER), type(uint256).max);
        }
    } 
}