// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import {IMetaVault} from "./interfaces/IMetaVault.sol";
import {IDepositor} from "./interfaces/IDepositor.sol";
import {IStrataCDO} from "./interfaces/IStrataCDO.sol";
import {AccessControlled} from "../governance/AccessControlled.sol";

contract TrancheDepositor is AccessControlled {

    bytes32 public constant DEPOSITOR_CONFIG_ROLE = keccak256("DEPOSITOR_CONFIG_ROLE");

    IERC20 public USDe;
    IERC4626 public sUSDe;
    IERC4626 public pUSDe;

    event SwapInfoChanged(address indexed token);
    event AutoWithdrawalsChanged();
    event CdoAdded(address cdo);
    event TranchesAdded();

    error InvalidAsset(address vault, address asset);


    struct TAutoSwap {
        address router;
        // Fee Tier, 0 for default (100=(0.01%))
        uint24 fee;
        // Default minimum return (1000 = 100%), assuming 1:1 price
        uint24 minimumReturnPercentage;
    }

    struct TDepositParams {
        // Optional, default 0 = no deadline
        uint256 swapDeadline;
        // Optional, default 0 = calculate return based on minimumReturnPercentage
        uint256 swapAmountOutMinimum;

        // Optional, default Tranche::asset()
        address swapTokenOut;
    }

    mapping (address sourceToken => TAutoSwap tokenSwapInfo) public autoSwaps;

    mapping (address sourceVault => bool enabled) public autoWithdrawals;

    mapping (address tranche => mapping(address token => bool enabled)) public tranches;


    function initialize(
        address owner_,
        address acm_
    ) public virtual initializer {
        AccessControlled_init(owner_, acm_);
    }

    /**
     * @notice Adds or clears the swap information for a given token
     * @dev This function allows the owner to set or update the swap parameters for a specific token
     * @param token The ERC20 token address for which to update swap info
     * @param swapInfo The new swap information to set, including router and fee
     */
    function addSwapInfo (IERC20 token, TAutoSwap calldata swapInfo) external onlyRole(DEPOSITOR_CONFIG_ROLE) {
        require(address(token) != address(0), "ZERO_ADDRESS");
        require(swapInfo.router != address(0), "ZERO_ADDRESS");
        require(100 <= swapInfo.fee && swapInfo.fee <= 10000, "INVALID_FEE_TIER");
        require(900 <= swapInfo.minimumReturnPercentage && swapInfo.minimumReturnPercentage <= 1000, "INVALID_RETURN_PERCENTAGE");

        autoSwaps[address(token)] = swapInfo;
        emit SwapInfoChanged(address(token));
    }

    function addAutoWithdrawals (address[] calldata tokens, bool[] calldata statuses) external onlyRole(DEPOSITOR_CONFIG_ROLE) {
        uint256 len = tokens.length;
        require(len == statuses.length, "LengthMissmatch");
        for (uint256 i; i < len; ) {
            autoWithdrawals[tokens[i]] = statuses[i];
            unchecked { i++; }
        }
        emit AutoWithdrawalsChanged();
    }
    function addCdo (IStrataCDO cdo) external onlyRole(DEPOSITOR_CONFIG_ROLE) {
        IERC20[] memory tokens = cdo.strategy().getSupportedTokens();
        address jrt = address(cdo.jrtVault());
        address srt = address(cdo.srtVault());
        uint256 len = tokens.length;
        for (uint256 i; i < len; ) {
            address t = address(tokens[i]);
            tranches[jrt][t] = true;
            tranches[srt][t] = true;
            unchecked { i++; }
        }
        emit CdoAdded(address(cdo));
    }


    /**
     * @notice Deposits assets into the vault
     * @dev Accepts three types of assets:
     *      1. Supported by the strategy: Deposited as-is
     *      2. ERC4626 withdrawals: First withdraw the base Asset, then reenter
     *      3. Preconfigured swaps: Swapped to base Asset, then reenter
     * @param vault The tranche Vault to deposit into
     * @param asset The address of the asset to deposit
     * @param amount The amount of the asset to deposit
     * @return uint256 The amount of pUSDe tokens minted
     */
    function deposit(IMetaVault vault, IERC20 asset, uint256 amount, address receiver) internal returns (uint256) {
        return _deposit(vault, asset, amount, receiver, TDepositParams(0, 0, address(0)));
    }

    /**
     * @notice Includes deposit parameters, e.g. to configure the swap
     * @return uint256 The amount of pUSDe tokens minted
     */
    function deposit(IMetaVault vault, IERC20 asset, uint256 amount, address receiver, TDepositParams calldata params) external returns (uint256) {
        return _deposit(vault, asset, amount, receiver, params);
    }

    function _deposit(IMetaVault vault, IERC20 asset, uint256 amount, address receiver, TDepositParams memory params) internal returns (uint256) {
        address user = _msgSender();
        return _deposit(vault, asset, user, amount, receiver, params);
    }

    function _deposit(IMetaVault vault, IERC20 asset, address owner, uint256 amount, address receiver, TDepositParams memory params) internal returns (uint256) {
        if (tranches[address(vault)][address(asset)] == true) {
            return _deposit_asMetaToken(vault, asset, owner, amount, receiver);
        }
        if (autoWithdrawals[address(asset)] == true) {
            return _deposit_viaWithdraw(vault, IERC4626(address(asset)), owner, amount, receiver);
        }
        if (autoSwaps[address(asset)].router != address(0)) {
            return _deposit_viaSwap(vault, asset, owner, amount, receiver, params);
        }
        revert InvalidAsset(address(vault), address(asset));
    }

    function _deposit_asMetaToken (IMetaVault vault, IERC20 asset, address from, uint256 amount, address receiver) internal returns (uint256) {
        require(amount > 0, "Deposit is zero");

        if (from != address(this)) {
            // Get USDe Tokens
            SafeERC20.safeTransferFrom(asset, from, address(this), amount);
        }

        SafeERC20.forceApprove(asset, address(vault), amount);
        return vault.deposit(address(asset), amount, receiver);
    }

    function _deposit_viaWithdraw (IMetaVault vault, IERC4626 sourceVault, address from, uint256 amount, address receiver) internal returns (uint256) {
        require(amount > 0, "Deposit is zero");

        IERC20 baseAsset = IERC20(sourceVault.asset());
        uint256 baseAssetBalanceBefore = baseAsset.balanceOf(address(this));

        sourceVault.withdraw(amount, address(this), from);
        uint256 amountOut = baseAsset.balanceOf(address(this)) - baseAssetBalanceBefore;
        return _deposit(vault, baseAsset, address(this), amountOut, receiver, TDepositParams(0, 0, address(0)));
    }


    function _deposit_viaSwap (IMetaVault vault, IERC20 tokenIn, address from, uint256 amount, address receiver, TDepositParams memory depositParams) internal returns (uint256) {

        SafeERC20.safeTransferFrom(tokenIn, from, address(this), amount);

        TAutoSwap memory swapInfo = autoSwaps[address(tokenIn)];

        // Approve Uniswap router to spend Token
        SafeERC20.forceApprove(tokenIn, swapInfo.router, amount);

        uint256 amountOutMin = depositParams.swapAmountOutMinimum;
        if (amountOutMin == 0) {
            // Calculate minimum amount out with 0.1% slippage, assuming 1:1 price
            amountOutMin = (amount * swapInfo.minimumReturnPercentage) / 1000;
        }
        uint256 deadline = depositParams.swapDeadline;
        if (deadline == 0) {
            // Use future to effectively skip deadline checks
            deadline = block.timestamp + 15;
        }

        address tokenOut = depositParams.swapTokenOut;
        if (tokenOut == address(0)) {
            tokenOut = vault.asset();
        }

        bool isTokenOutSupported = tranches[address(vault)][tokenOut] == true;
        if (isTokenOutSupported == false) {
            isTokenOutSupported = autoWithdrawals[tokenOut] == true;
        }
        if (isTokenOutSupported == false) {
            revert InvalidAsset(address(vault), tokenOut);
        }

        uint256 tokenOutAmountBefore = IERC20(tokenOut).balanceOf(address(this));

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: address(tokenIn),
            tokenOut: tokenOut,
            fee: swapInfo.fee,
            recipient: address(this),
            deadline: deadline,
            amountIn: amount,
            amountOutMinimum: amountOutMin,
            sqrtPriceLimitX96: 0
        });

        ISwapRouter(swapInfo.router).exactInputSingle(params);
        uint256 amountOut = IERC20(tokenOut).balanceOf(address(this)) - tokenOutAmountBefore;
        return _deposit(vault, IERC20(tokenOut), address(this), amountOut, receiver, TDepositParams(0, 0, address(0)));
    }

}
