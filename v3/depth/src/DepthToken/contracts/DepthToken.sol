// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IAboreanRouter } from "./interfaces/IAboreanRouter.sol";

contract DepthToken is ERC20, Ownable {
    using SafeERC20 for IERC20;

    uint256 public constant BPS_DENOMINATOR = 10_000;
    uint256 public constant INITIAL_DEPLOYMENT_MINT = 2_000_000 ether;
    uint256 public constant BURN_SPLIT_BPS = 4_000;
    uint256 public constant AUTO_LP_SPLIT_BPS = 4_000;
    uint256 public constant DEFAULT_TRANSFER_TAX_BPS = 500;

    uint256 public transferTaxBps = DEFAULT_TRANSFER_TAX_BPS;
    uint256 public autoLpThreshold;

    address public treasury;
    address public emissionController;
    address public autoLpQuoteToken;
    address public poolFactory;

    IAboreanRouter public router;

    mapping(address => bool) public taxWhitelist;
    bool public tradingEnabled;

    bool private inSwapAndLiquify;

    error InvalidAddress();
    error InvalidTaxBps(uint256 taxBps);
    error NotEmissionController(address caller);
    error TradingNotEnabled();
    error TradingAlreadyEnabled();

    event TradingEnabled();
    event TransferTaxSet(uint256 transferTaxBps);
    event TaxWhitelistSet(address indexed account, bool isWhitelisted);
    event EmissionControllerSet(address indexed emissionController);
    event TreasurySet(address indexed treasury);
    event AutoLpThresholdSet(uint256 threshold);
    event AutoLpQuoteTokenSet(address indexed quoteToken);
    event RouterSet(address indexed router);
    event PoolFactorySet(address indexed poolFactory);
    event TransferTaxApplied(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 totalTax,
        uint256 burnAmount,
        uint256 autoLpAmount,
        uint256 treasuryAmount
    );
    event SwapAndLiquify(uint256 tokensSwapped, uint256 quoteReceived, uint256 tokensIntoLiquidity);

    constructor(
        address initialTreasury,
        address initialVault,
        address initialEmissionController,
        address initialRouter,
        address initialPoolFactory,
        address initialAutoLpQuoteToken,
        uint256 initialAutoLpThreshold
    ) ERC20("Depth Token", "DEPTH") Ownable(msg.sender) {
        if (initialTreasury == address(0)) revert InvalidAddress();

        treasury = initialTreasury;
        autoLpThreshold = initialAutoLpThreshold;
        router = IAboreanRouter(initialRouter);
        poolFactory = initialPoolFactory;
        autoLpQuoteToken = initialAutoLpQuoteToken;
        emissionController = initialEmissionController;

        _setTaxWhitelist(address(this), true);
        _setTaxWhitelist(initialTreasury, true);

        if (initialVault != address(0)) {
            _setTaxWhitelist(initialVault, true);
        }

        if (initialEmissionController != address(0)) {
            _setTaxWhitelist(initialEmissionController, true);
        }

        _mint(msg.sender, INITIAL_DEPLOYMENT_MINT);
    }

    modifier onlyEmissionController() {
        if (msg.sender != emissionController) revert NotEmissionController(msg.sender);
        _;
    }

    function mint(address to, uint256 amount) external onlyEmissionController {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function enableTrading() external onlyOwner {
        if (tradingEnabled) revert TradingAlreadyEnabled();

        tradingEnabled = true;
        emit TradingEnabled();
    }

    function setTransferTax(uint256 bps) external onlyOwner {
        if (bps > BPS_DENOMINATOR) revert InvalidTaxBps(bps);

        transferTaxBps = bps;
        emit TransferTaxSet(bps);
    }

    function setTaxWhitelist(address account, bool exempt) external onlyOwner {
        if (account == address(0)) revert InvalidAddress();

        _setTaxWhitelist(account, exempt);
    }

    function setEmissionController(address newEmissionController) external onlyOwner {
        if (newEmissionController == address(0)) revert InvalidAddress();

        emissionController = newEmissionController;
        _setTaxWhitelist(newEmissionController, true);
        emit EmissionControllerSet(newEmissionController);
    }

    function setTreasury(address newTreasury) external onlyOwner {
        if (newTreasury == address(0)) revert InvalidAddress();

        treasury = newTreasury;
        _setTaxWhitelist(newTreasury, true);
        emit TreasurySet(newTreasury);
    }

    function setAutoLpThreshold(uint256 amount) external onlyOwner {
        autoLpThreshold = amount;
        emit AutoLpThresholdSet(amount);
    }

    function setAutoLpQuoteToken(address quoteToken) external onlyOwner {
        if (quoteToken == address(0)) revert InvalidAddress();

        autoLpQuoteToken = quoteToken;
        emit AutoLpQuoteTokenSet(quoteToken);
    }

    function setRouter(address routerAddress) external onlyOwner {
        if (routerAddress == address(0)) revert InvalidAddress();

        router = IAboreanRouter(routerAddress);
        emit RouterSet(routerAddress);
    }

    function setPoolFactory(address newPoolFactory) external onlyOwner {
        if (newPoolFactory == address(0)) revert InvalidAddress();

        poolFactory = newPoolFactory;
        emit PoolFactorySet(newPoolFactory);
    }

    function _update(address from, address to, uint256 value) internal override {
        bool isTransfer = from != address(0) && to != address(0);
        if (!tradingEnabled && isTransfer && !taxWhitelist[from] && !taxWhitelist[to]) {
            revert TradingNotEnabled();
        }

        if (inSwapAndLiquify) {
            super._update(from, to, value);
            return;
        }

        if (_shouldSwapAndLiquify(from, to)) {
            _swapAndLiquify();
        }

        bool shouldTax = isTransfer && transferTaxBps > 0 && !taxWhitelist[from] && !taxWhitelist[to];

        if (!shouldTax) {
            super._update(from, to, value);
            return;
        }

        uint256 taxAmount = (value * transferTaxBps) / BPS_DENOMINATOR;
        if (taxAmount == 0) {
            super._update(from, to, value);
            return;
        }

        uint256 burnAmount = (taxAmount * BURN_SPLIT_BPS) / BPS_DENOMINATOR;
        uint256 autoLpAmount = (taxAmount * AUTO_LP_SPLIT_BPS) / BPS_DENOMINATOR;
        uint256 treasuryAmount = taxAmount - burnAmount - autoLpAmount;
        uint256 amountAfterTax = value - taxAmount;

        if (burnAmount > 0) {
            super._update(from, address(0), burnAmount);
        }

        if (autoLpAmount > 0) {
            super._update(from, address(this), autoLpAmount);
        }

        if (treasuryAmount > 0) {
            super._update(from, treasury, treasuryAmount);
        }

        super._update(from, to, amountAfterTax);
        emit TransferTaxApplied(from, to, value, taxAmount, burnAmount, autoLpAmount, treasuryAmount);
    }

    function _setTaxWhitelist(address account, bool exempt) internal {
        taxWhitelist[account] = exempt;
        emit TaxWhitelistSet(account, exempt);
    }

    function _shouldSwapAndLiquify(address from, address to) internal view returns (bool) {
        return
            from != address(0) &&
            to != address(0) &&
            address(router) != address(0) &&
            autoLpQuoteToken != address(0) &&
            autoLpThreshold > 0 &&
            balanceOf(address(this)) >= autoLpThreshold;
    }

    function _swapAndLiquify() internal {
        uint256 contractTokenBalance = balanceOf(address(this));
        if (contractTokenBalance < autoLpThreshold) {
            return;
        }

        uint256 half = contractTokenBalance / 2;
        uint256 otherHalf = contractTokenBalance - half;

        if (half == 0 || otherHalf == 0) {
            return;
        }

        inSwapAndLiquify = true;

        _approve(address(this), address(router), contractTokenBalance);

        uint256 initialQuoteBalance = IERC20(autoLpQuoteToken).balanceOf(address(this));

        IAboreanRouter.Route[] memory routes = new IAboreanRouter.Route[](1);
        routes[0] = IAboreanRouter.Route({
            from: address(this),
            to: autoLpQuoteToken,
            stable: false,
            factory: poolFactory
        });

        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            half, 0, routes, address(this), block.timestamp
        );

        uint256 quoteReceived = IERC20(autoLpQuoteToken).balanceOf(address(this)) - initialQuoteBalance;
        IERC20(autoLpQuoteToken).forceApprove(address(router), quoteReceived);

        router.addLiquidity(
            address(this),
            autoLpQuoteToken,
            false,
            otherHalf,
            quoteReceived,
            0,
            0,
            treasury,
            block.timestamp
        );

        inSwapAndLiquify = false;

        emit SwapAndLiquify(half, quoteReceived, otherHalf);
    }

    function rescueETH() external onlyOwner {
        payable(treasury).transfer(address(this).balance);
    }

    function rescueTokens(address token, uint256 amount) external onlyOwner {
        if (token == address(this)) revert InvalidAddress();
        IERC20(token).safeTransfer(treasury, amount);
    }

    receive() external payable {}
}
