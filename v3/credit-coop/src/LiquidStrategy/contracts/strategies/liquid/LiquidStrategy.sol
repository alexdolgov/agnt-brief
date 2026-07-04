// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC4626} from "openzeppelin/interfaces/IERC4626.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "openzeppelin/utils/ReentrancyGuard.sol";
import {Math} from "openzeppelin/utils/math/Math.sol";

import {IOracle} from "Line-Of-Credit-v2/interfaces/IOracle.sol";
import {ICoWSwapSettlement} from "contracts/interfaces/ICoWSwapSettlement.sol";

import {StrategyBase, ILendingVault} from "./StrategyBase.sol";
import {IERC20Metadata} from "openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title  - LiquidStrategy
 * @author - Credit Cooperative
 * @notice - Liquid strategy contract for single asset LendingVault contracts. Supports depositing and withdrawing from any 4626 vault with the vault asset as its base asset.
 * @dev    - Does not support swapping between 4626 vaults with differing base assets.
 * @dev    - State changing functions are only callable by owner or CreditStrategy contract.
 */
contract LiquidStrategy is StrategyBase {
    using SafeERC20 for IERC20;
    using Math for uint256;

    // CoW Protocol
    address public constant COWSWAP_SETTLEMENT = 0x9008D19f58AAbD9eD0D60971565AA8510560ab41;
    address public constant COWSWAP_RELAYER = 0xC92E8bdf79f0507f65a392b0ab4667716BFE0110;

    // Ethena tokens
    address public sUSDe = 0x9D39A5DE30e57443BfF2A8307A4256c8797A3497;
    address public USDe = 0x4c9EDD5852cd905f086C759E8383e09bff1E68B3;
    bool public ethenaEnabled;

    constructor(IERC20 _asset, address _owner, address _oracle, bool _ethenaEnabled) Ownable(_owner) {
        asset = _asset;
        oracle = _oracle;
        ethenaEnabled = _ethenaEnabled;
        divisor = 10 ** (18 - IERC20Metadata(address(_asset)).decimals());
    }

    /**
     * @notice - Checks `vault` is not the Ethena sUSDe vault.
     */
    function _notStakedUSDE(address vault) internal view {
        if (vault == sUSDe) {
            revert InvalidVaultAddress();
        }
    }


    /**
     * @notice  - Approves a vault for use with the strategy
     * @dev     - Only allows vaults that have the same native asset as the strategy
     * @param _vault    - Address of the vault to approve
     */
    function _approveVault(address _vault) internal override {
        _onlyNativeAsset(_vault);
        super._approveVault(_vault);
    }

    /**
     * @notice  - Returns the total assets held by the Strategy contract demoninated in the Strategy's native asset. This includes all assets held in the 4626 vaults and the Strategy contract itself.
     * @return total    - Total assets
     */
    function totalAssets() public view virtual returns (uint256 total) {
        uint256 len = vaults.length;
        for (uint256 i = 0; i < len; i++) {
            uint256 shares = IERC4626(vaults[i]).balanceOf(address(this));
            total += IERC4626(vaults[i]).previewRedeem(shares);
        }
        total += asset.balanceOf(address(this));

        // Add in the value of USDe and sUSDe
        total += valueOfUSDE();
    }

    /**
     * @notice - Returns the value of the Ethena sUSDe held by the Strategy contract in terms of the Strategy's native asset.
     * @return valueInAssets - Value of the USDA in terms of the Strategy's native asset.
     */
    function valueOfUSDE() public view returns (uint256 valueInAssets) {

        if (!ethenaEnabled) {
            return 0;
        }

        // Prices of the vault's native asset and Ethena tokens
        uint256 assetPrice = uint256(IOracle(oracle).getLatestAnswer(address(asset)));
        uint256 sUSDePrice = uint256(IOracle(oracle).getLatestAnswer(sUSDe));
        uint256 USDePrice = uint256(IOracle(oracle).getLatestAnswer(USDe));

        // check if oracle prices are available
        if (assetPrice == 0 || sUSDePrice == 0 || USDePrice == 0) {
            return 0;
        }

        // Balances of sUSDe and USDe in the Strategy contract
        uint256 sUSDeAmount = IERC20(sUSDe).balanceOf(address(this));
        uint256 USDeAmount = IERC20(USDe).balanceOf(address(this));

        // calculate the value of the sUSDe in terms of the vault's native asset
        valueInAssets += sUSDeAmount.mulDiv(sUSDePrice, assetPrice) / divisor;
        valueInAssets += USDeAmount.mulDiv(USDePrice, assetPrice) / divisor;
    }

    /**
     * @notice  - Sets the Ethena token addresses for the strategy
     * @param _sUSDe - Address of the sUSDe token
     * @param _USDe  - Address of the USDe token
     */
    function setEthenaTokens(address _sUSDe, address _USDe) external onlyOwner {
        sUSDe = _sUSDe;
        USDe = _USDe;
        ethenaEnabled = true;
    }

    /**
     * @notice  - Enables or disables the use of Ethena tokens in the strategy
     * @param _enabled - Boolean indicating whether Ethena tokens are enabled
     */
    function enableEthena(bool _enabled) external onlyOwner {
        ethenaEnabled = _enabled;
    }

    /**
     * @notice Approve tokens to be spent by the CowSwap contract.
     * @dev Only callable by the owner of the strategy.
     * @param token - Address of the token to approve.
     * @param amount - Amount of the token to approve.
     */
    function approveTokenToCowSwap(address token, uint256 amount) external onlyOwner {
        IERC20(token).forceApprove(COWSWAP_RELAYER, amount);
        emit TokensApproved(token, amount);
    }

    /**
     * @notice Pre-sign an order for CowSwap contract.
     * @dev Only callable by the owner of the strategy.
     * @param orderUid - Order UID to pre-sign.
     */
    function signCowSwapOrder(bytes calldata orderUid) external onlyOwner {
        ICoWSwapSettlement(COWSWAP_SETTLEMENT).setPreSignature(orderUid, true);
        emit OrderPlaced(orderUid);
    }

    /**
     * @notice Cancel a CowSwap order by revoking the pre-signature.
     * @dev Only callable by the owner of the strategy.
     * @param orderUid  -Order UID to cancel.
     */
    function cancelCowSwapOrder(bytes calldata orderUid) external onlyOwner {
        ICoWSwapSettlement(COWSWAP_SETTLEMENT).setPreSignature(orderUid, false);
        emit OrderCancelled(orderUid);
    }

    /**
     * @notice  - Reallocates funds between approved vaults. Deposits assets into the vaults if isDeposit is true, withdraws if false.
     * @param targets   - Array of vaults to reallocate funds to/from.
     * @param amounts   - Array of amounts to reallocate to/from each vault (denominated in asset of the vault).
     * @param isDeposit - Array of booleans indicating whether to deposit or withdraw from each vault.
     * @param minAmounts - Array of minimum assets to reallocate to/from each vault (denominated in asset of the vault).
     */
    function reallocateFunds(address[] memory targets, uint256[] memory amounts, bool[] memory isDeposit, uint256[] memory minAmounts)
        external
        onlyOwner
        virtual
    {
        _arrayLengthsMustMatch(targets, amounts, isDeposit);

        uint256 len = targets.length;
        for (uint256 i = 0; i < len; i++) {
            _notStakedUSDE(targets[i]);
            _vaultMustBeApproved(targets[i]);
            if (isDeposit[i]) {
                asset.forceApprove(targets[i], amounts[i]);
                uint256 sharesMinted = IERC4626(targets[i]).deposit(amounts[i], address(this));
                emit VaultDeposit(targets[i], address(asset), amounts[i], sharesMinted);
                asset.forceApprove(targets[i], 0);
            } else {
                // Withdraw assets from the target vault
                uint256 balanceBefore = asset.balanceOf(address(this));
                uint256 withdrawable = IERC4626(targets[i]).maxWithdraw(address(this));
                if (withdrawable < amounts[i]) amounts[i] = withdrawable;
                uint256 sharesBurned = IERC4626(targets[i]).withdraw(amounts[i], address(this), address(this));

                // check slippage threshold is not exceeded after withdrawal
                uint256 withdrawalAmount = asset.balanceOf(address(this)) - balanceBefore;
                if (minAmounts[i] > withdrawalAmount) {
                    revert SlippageThresholdExceeded(withdrawalAmount, minAmounts[i]);
                }

                emit VaultWithdraw(targets[i], address(asset), amounts[i], sharesBurned);
            }
        }
    }

    /**
     * @notice  - Migrates assets from one 4626 vault to another.
     * @param _currentVault - Address of the current 4626 vault to migrate from.
     * @param _newVault     - Address of the new 4626 vault to migrate to.
     * @param _minAmount - Minimum amount of assets to migrate.
     */
    function migrateFrom4626(address _currentVault, address _newVault, uint256 _minAmount) external onlyOwner {
        _notStakedUSDE(_currentVault);
        _notStakedUSDE(_newVault);
        _approveVault(_newVault);

        // Withdraw assets from the current vault
        uint256 balanceBefore = asset.balanceOf(address(this));
        uint256 maxWithdrawable = IERC4626(_currentVault).maxWithdraw(address(this));
        uint256 sharesBurned = IERC4626(_currentVault).withdraw(maxWithdrawable, address(this), address(this));
        emit VaultWithdraw(_currentVault, IERC4626(_currentVault).asset(), maxWithdrawable, sharesBurned);

        // Check amount to deposit into new vault is at least the minimum amount
        uint256 depositAmount = asset.balanceOf(address(this)) - balanceBefore;
        if (_minAmount > depositAmount) {
            revert SlippageThresholdExceeded(depositAmount, _minAmount);
        }

        // Deposit the withdrawn assets into the new vault
        asset.forceApprove(_newVault, depositAmount);
        uint256 sharesMinted = IERC4626(_newVault).deposit(depositAmount, address(this));
        emit VaultDeposit(_newVault, address(this), depositAmount, sharesMinted);
        asset.forceApprove(_newVault, 0);
    }

    fallback() external payable {}
    receive() external payable {}
}
