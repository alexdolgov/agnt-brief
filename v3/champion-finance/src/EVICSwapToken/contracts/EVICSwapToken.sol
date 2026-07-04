// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./lib/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IUniswapV2Router.sol";
import "./interfaces/IUniswapV2Factory.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IEVICToken.sol";
import "./utils/ContractGuard.sol";

contract EVICSwapToken is Ownable, ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    /* ========== CONSTANT VARIABLES ========== */
    IUniswapV2Router public ROUTER;
    IUniswapV2Factory public FACTORY;
    address public admin;
    address public polWallet;
    
    IERC20 public wetheToken;
    IEVICToken public evicToken;

    uint256 public maximumAmountSellPercent = 50; // 0.5%
    bool public enabled = true; // enable/disable selling function
    uint256 public pegValue = 1e18;

    event SetPolWallet(address oldWallet, address newWallet);
    event SetMaximumAmountSellPercent(uint256 oldValue, uint256 newValue);
    event EnableSelling();
    event DisableSelling();
    event SetPegValue(uint256 oldValue, uint256 newValue);

    /* ========== INITIALIZER ========== */
    constructor(
        address _polWallet,
        address _router,
        address _wetheToken, 
        address _evicToken
    ) {
        require(_polWallet != address(0), "!_polWallet");
        require(_router != address(0), "!_router");
        require(_wetheToken != address(0), "!_wetheToken");
        require(_evicToken != address(0), "!_evicToken");

        admin = msg.sender;
        
        polWallet = _polWallet;
        ROUTER = IUniswapV2Router(_router);
        wetheToken = IERC20(_wetheToken);
        evicToken = IEVICToken(_evicToken);
        FACTORY = IUniswapV2Factory(ROUTER.factory());
    }
    
    uint private unlocked = 1;
    modifier lock() {
        require(unlocked == 1, 'EVICSwapToken: LOCKED');
        unlocked = 0;
        _;
        unlocked = 1;
    }

    modifier onlyAdmin() {
        require(admin == msg.sender, "EVICSwapToken: caller is not the admin");
        _;
    }

    function getMaxAmountSell() public view returns (uint256) {
       return evicToken.rebaseSupply().mul(maximumAmountSellPercent).div(10000);
    }

    function getEvicPrice() public view returns (uint256) {
       address pairAddress = FACTORY.getPair(address(evicToken), address(wetheToken));
       IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        address token0 = pair.token0();
        if (token0 == address(evicToken)) {
            return reserve1.mul(1e18).div(reserve0);
        } else {
            return reserve0.mul(1e18).div(reserve1);
        }
    }

    function sellEvicTokenToWethe(
        uint256 _evicAmount,
        uint256 _minAmountWetheOut
    ) external onlyOneBlock lock {
        require(enabled, "Contract selling is disabled");
        uint256 maxAmountSell = getMaxAmountSell();
		require(_evicAmount <= maxAmountSell, "Over max selling amount");
        IERC20(evicToken).safeTransferFrom(msg.sender, address(this), _evicAmount);
        _approveTokenIfNeeded(address(evicToken));

        uint256 currentPrice = getEvicPrice();
        if (pegValue >= currentPrice) {
            // tax enable
            uint256 taxAmount = 0;
            uint256 currentTaxRate = evicToken.calculateTaxRate(currentPrice);
            if (currentTaxRate > 0) {
                taxAmount = _evicAmount.mul(currentTaxRate).div(10000);
            }

            if(taxAmount > 0)
            {
                _evicAmount = _evicAmount.sub(taxAmount);
                IERC20(evicToken).safeTransfer(polWallet, taxAmount);
            }
        }

        address[] memory path = new address[](2);
        path[0] = address(evicToken);
        path[1] = address(wetheToken);

        ROUTER.swapExactTokensForTokens(
            _evicAmount, 
            _minAmountWetheOut, 
            path, 
            address(this),
            block.timestamp
        );

        uint256 balanceWethe = wetheToken.balanceOf(address(this));
        wetheToken.safeTransfer(msg.sender, balanceWethe);
    }

    function buyEvicTokenByWethe(
        uint256 _wethAmount,
        uint256 _minAmountEvicOut
    ) external onlyOneBlock lock {
        wetheToken.safeTransferFrom(msg.sender, address(this), _wethAmount);
        _approveTokenIfNeeded(address(wetheToken));
        address[] memory path = new address[](2);
        path[0] = address(wetheToken);
        path[1] = address(evicToken);

        ROUTER.swapExactTokensForTokens(
            _wethAmount, 
            _minAmountEvicOut, 
            path, 
            address(this),
            block.timestamp
        );

        uint256 balanceEvic = evicToken.balanceOf(address(this));
        IERC20(evicToken).safeTransfer(msg.sender, balanceEvic);
    }

    function getEstimateWetheToken(uint256 _evicAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(evicToken);
        path[1] = address(wetheToken);

        uint256 currentPrice = getEvicPrice();
        if (pegValue >= currentPrice) {
            // tax enable
            uint256 taxAmount = 0;
            uint256 currentTaxRate = evicToken.calculateTaxRate(currentPrice);
            if (currentTaxRate > 0) {
                taxAmount = _evicAmount.mul(currentTaxRate).div(10000);
            }

            if(taxAmount > 0)
            {
                _evicAmount = _evicAmount.sub(taxAmount);
            }
        }

        uint256[] memory amounts = ROUTER.getAmountsOut(_evicAmount, path);
        return amounts[amounts.length - 1];
    }

    function getEstimateEvicToken(uint256 _wethAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(wetheToken);
        path[1] = address(evicToken);
        uint256[] memory amounts = ROUTER.getAmountsOut(_wethAmount, path);
        return amounts[amounts.length - 1];
    }

    function getCurrentTaxRate() external view returns (uint256) {
         uint256 currentPrice = getEvicPrice();
        if (pegValue >= currentPrice) {
            uint256 currentTaxRate = evicToken.calculateTaxRate(currentPrice);
            return currentTaxRate;
        }

        return 0;
    }

    function _approveTokenIfNeeded(address token) private {
        if (IERC20(token).allowance(address(this), address(ROUTER)) == 0) {
            IERC20(token).safeApprove(address(ROUTER), type(uint256).max);
        }
    } 

    // SET FUNCTION
    function setPolWallet(address _polWallet) external onlyAdmin {
        require(_polWallet != address(0), "_polWallet address cannot be 0 address");
		emit SetPolWallet(polWallet, _polWallet);
        polWallet = _polWallet;
    }

    function setMaximumAmountSellPercent(uint256 _value) external onlyAdmin returns (bool) {
		require(_value <= 10000, "Value range [0-100%]");
		emit SetMaximumAmountSellPercent(maximumAmountSellPercent, _value);
        maximumAmountSellPercent = _value;
        return true;
    }

    function setPegValue(uint256 _value) external onlyAdmin returns (bool) {
		require(_value >= 1e18 && _value <= 5e18, "Value range [1-5]");
		emit SetPegValue(pegValue, _value);
        pegValue = _value;
        return true;
    }

    function enableSelling() external onlyAdmin {
        enabled = true;
		emit EnableSelling();
    }

    function disableSelling() external onlyAdmin {
        enabled = false;
		emit DisableSelling();
    }
}