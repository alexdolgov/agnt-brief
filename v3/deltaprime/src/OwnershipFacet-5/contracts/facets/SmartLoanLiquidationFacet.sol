// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 671e0ff496252fbe09515497c2344519229ca2cc;
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../ReentrancyGuardKeccak.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../lib/SolvencyMethods.sol";
import "../Pool.sol";
import "../interfaces/ITokenManager.sol";

//This path is updated during deployment
import "../lib/local/DeploymentConstants.sol";

import "./avalanche/SolvencyFacetProdAvalanche.sol";
import "../SmartLoanDiamondBeacon.sol";
import "../interfaces/IBorrowersRegistry.sol";

contract SmartLoanLiquidationFacet is ReentrancyGuardKeccak, SolvencyMethods {
    /**
    * Fixed liquidation fee percentage (14% of the repay amount)
    */
    uint256 private constant _LIQUIDATION_FEE_PERCENT = 140;
    uint256 private constant DUST_THRESHOLD_USD = 1e17;

    using TransferHelper for address payable;
    using TransferHelper for address;

    /* ========== VIEW FUNCTIONS ========== */

    /**
     * @return uint256 fixed liquidation fee percentage
    **/
    function getLiquidationFeePercent() public pure returns (uint256) {
        return _LIQUIDATION_FEE_PERCENT;
    }

    /**
     * @dev Check if an address is a whitelisted liquidator
     * @param _liquidator Address to check
     * @return bool True if address is whitelisted
     */
    function isLiquidatorWhitelisted(address _liquidator) public view returns(bool){
        DiamondStorageLib.LiquidationStorage storage ls = DiamondStorageLib.liquidationStorage();
        return ls.canLiquidate[_liquidator];
    }

    /**
    * @dev Returns the timestamp of the last insolvency snapshot
    * @return uint256 Timestamp when the insolvency snapshot was taken (0 if not taken)
    */
    function getLastInsolventTimestamp() external view returns (uint256) {
        DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
        return ls.lastInsolventTimestamp;
    }

    /**
    * @dev Returns the health ratio from the insolvency snapshot
    * @return uint256 Health ratio when insolvency snapshot was taken
    */
    function getHealthRatioSnapshot() external view returns (uint256) {
        DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
        return ls.healthRatioSnapshot;
    }

    /* ========== PUBLIC AND EXTERNAL MUTATIVE FUNCTIONS ========== */

    function whitelistLiquidators(address[] memory _liquidators) external onlyOwner {
        address smartLoansFactory = DeploymentConstants.getSmartLoansFactoryAddress();
        DiamondStorageLib.LiquidationStorage storage ls = DiamondStorageLib.liquidationStorage();

        for(uint i; i<_liquidators.length; i++){
            require(IBorrowersRegistry(smartLoansFactory).getLoanForOwner(_liquidators[i])== address(0), "liquidators can't have loans");
            ls.canLiquidate[_liquidators[i]] = true;
            emit LiquidatorWhitelisted(_liquidators[i], msg.sender, block.timestamp);
        }
    }

    function delistLiquidators(address[] memory _liquidators) external onlyOwner {
        DiamondStorageLib.LiquidationStorage storage ls = DiamondStorageLib.liquidationStorage();
        for(uint i; i<_liquidators.length; i++){
            ls.canLiquidate[_liquidators[i]] = false;
            emit LiquidatorDelisted(_liquidators[i], msg.sender, block.timestamp);
        }
    }

    function snapshotInsolvency() external onlyWhitelistedLiquidators accountNotFrozen nonReentrant {
        DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
        require(ls.lastInsolventTimestamp == 0, "Account is already being liquidated");
        
        uint256 hr = _getHealthRatio();
        require(hr < 1e18, "Account is solvent");
        
        ls.lastInsolventTimestamp = block.timestamp;
        ls.healthRatioSnapshot = hr;

        emit InsolvencySnapshot(msg.sender, hr, block.timestamp);
    }

    /**
    * This function fully liquidates an insolvent account after an insolvency snapshot has been taken.
    * All debt is repaid using the account's existing tokens and a liquidation fee is 
    * calculated based on _LIQUIDATION_FEE_PERCENT % of the repaid amount.
    * 
    * @param _emergencyMode If true, allows partial debt repayment when account lacks sufficient assets.
    *                       In emergency mode: no liquidation bonus, total account value must be 0 post-liquidation.
    **/
    function liquidate(bool _emergencyMode) 
        external 
        onlyWhitelistedLiquidators 
        accountNotFrozen 
        nonReentrant 
    {
        DiamondStorageLib.LiquidationSnapshotStorage storage ls = DiamondStorageLib.liquidationSnapshotStorage();
        require(ls.lastInsolventTimestamp > 0, "No insolvency snapshot - call snapshotInsolvency first");
        
        if (_emergencyMode) {
            _repayAllDebtsPartial();
            
            uint256 totalValue = _getTotalValue();
            require(totalValue <= DUST_THRESHOLD_USD, "Emergency liquidation requires total account value to be 0");
            
            // No liquidation fee distribution in emergency mode
        } else {
            uint256 initialDebt = _getDebt();

            _repayAllDebts();

            uint256 remainingDebt = _getDebt();
            require(remainingDebt == 0, "Not all debt was repaid");
            
            uint256 liquidationFee = initialDebt * getLiquidationFeePercent() / DeploymentConstants.getPercentagePrecision();
            
            uint256 currentTotalValue = _getTotalValue();
            
            uint256 actualLiquidationFee = Math.min(liquidationFee, currentTotalValue);
            
            uint256 percentageToTake = actualLiquidationFee * 1e18 / currentTotalValue;
            
            if(percentageToTake > 0) {
                _distributeLiquidationFee(percentageToTake);
            }
        }
        
        // Clear insolvency snapshot
        delete ls.lastInsolventTimestamp;
        delete ls.healthRatioSnapshot;
        
        // Emit liquidation event
        emit Liquidated(
            msg.sender, 
            block.timestamp
        );
    }

    /**
    * @dev Repay all debts of the account using its own assets
    */
    function _repayAllDebts() internal {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory debtAssets = tokenManager.getAllPoolAssets();
        
        for (uint256 i = 0; i < debtAssets.length; i++) {
            IERC20Metadata token = IERC20Metadata(tokenManager.getAssetAddress(debtAssets[i], true));
            Pool pool = Pool(tokenManager.getPoolAddress(debtAssets[i]));
            
            uint256 debtAmount = pool.getBorrowed(address(this));
            if (debtAmount > 0) {
                uint256 balance = token.balanceOf(address(this));
                require(balance >= debtAmount, "Insufficient token balance to repay debt");
                
                address(token).safeApprove(address(pool), 0);
                address(token).safeApprove(address(pool), debtAmount);
                pool.repay(debtAmount);
                
                _syncExposure(tokenManager, address(token));
                
                emit LiquidationRepay(msg.sender, debtAssets[i], debtAmount, block.timestamp);
            }
        }
    }

    /**
    * @dev Repay debts partially using available balances (for emergency liquidation mode)
    */
    function _repayAllDebtsPartial() internal {
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        bytes32[] memory debtAssets = tokenManager.getAllPoolAssets();
        
        for (uint256 i = 0; i < debtAssets.length; i++) {
            IERC20Metadata token = IERC20Metadata(tokenManager.getAssetAddress(debtAssets[i], true));
            Pool pool = Pool(tokenManager.getPoolAddress(debtAssets[i]));
            
            uint256 debtAmount = pool.getBorrowed(address(this));
            if (debtAmount > 0) {
                uint256 balance = token.balanceOf(address(this));
                
                // Repay as much as possible with available balance
                uint256 repayAmount = Math.min(balance, debtAmount);
                
                if (repayAmount > 0) {
                    address(token).safeApprove(address(pool), 0);
                    address(token).safeApprove(address(pool), repayAmount);
                    pool.repay(repayAmount);
                    
                    _syncExposure(tokenManager, address(token));
                    
                    emit LiquidationRepay(msg.sender, debtAssets[i], repayAmount, block.timestamp);
                }
            }
        }
    }

    /**
    * @dev Distribute the liquidation fee to different treasuries (3-way split)
    */
    function _distributeLiquidationFee(uint256 percentageToTake) internal {
        // Native token transfer (3-way split)
        if (address(this).balance > 0) {
            uint256 transferAmount = address(this).balance * percentageToTake / 3 / 1e18;

            if(transferAmount > 0){
                payable(DeploymentConstants.getStabilityPoolAddress()).safeTransferETH(transferAmount);
                emit LiquidationTransfer(DeploymentConstants.getStabilityPoolAddress(), DeploymentConstants.getNativeTokenSymbol(), transferAmount, block.timestamp);

                payable(DeploymentConstants.getTreasuryAddress()).safeTransferETH(transferAmount);
                emit LiquidationFeesTransfer(DeploymentConstants.getTreasuryAddress(), DeploymentConstants.getNativeTokenSymbol(), transferAmount, block.timestamp);

                payable(DeploymentConstants.getFeesRedistributionAddress()).safeTransferETH(transferAmount);
                emit LiquidationFeesRedistributionTransfer(DeploymentConstants.getFeesRedistributionAddress(), DeploymentConstants.getNativeTokenSymbol(), transferAmount, block.timestamp);
            }
        }
        
        bytes32[] memory assetsOwned = DeploymentConstants.getAllOwnedAssets();
        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        
        for (uint256 i; i < assetsOwned.length; i++) {
            IERC20Metadata token = getERC20TokenInstance(assetsOwned[i], true);
            if(address(token) == 0x9e295B5B976a184B14aD8cd72413aD846C299660){
                token = IERC20Metadata(0xaE64d55a6f09E4263421737397D1fdFA71896a69);
            }
            
            uint256 balance = token.balanceOf(address(this));
            if (balance > 0) {
                uint256 transferAmount = balance * percentageToTake / 3 / 1e18;

                if(transferAmount > 0){
                    address(token).safeTransfer(DeploymentConstants.getStabilityPoolAddress(), transferAmount);
                    emit LiquidationTransfer(DeploymentConstants.getStabilityPoolAddress(), assetsOwned[i], transferAmount, block.timestamp);

                    address(token).safeTransfer(DeploymentConstants.getTreasuryAddress(), transferAmount);
                    emit LiquidationFeesTransfer(DeploymentConstants.getTreasuryAddress(), assetsOwned[i], transferAmount, block.timestamp);

                    address(token).safeTransfer(DeploymentConstants.getFeesRedistributionAddress(), transferAmount);
                    emit LiquidationFeesRedistributionTransfer(DeploymentConstants.getFeesRedistributionAddress(), assetsOwned[i], transferAmount, block.timestamp);
                }
                
                _syncExposure(tokenManager, address(token));
            }
        }
    }

    modifier onlyOwner() {
        DiamondStorageLib.enforceIsContractOwner();
        _;
    }

    modifier accountNotFrozen(){
        require(!DiamondStorageLib.isAccountFrozen(), "Account is frozen");
        _;
    }

    modifier onlyWhitelistedLiquidators() {
        // External call in order to execute this method in the SmartLoanDiamondBeacon contract storage
        require(SmartLoanLiquidationFacet(DeploymentConstants.getDiamondAddress()).isLiquidatorWhitelisted(msg.sender), "Only whitelisted liquidators can execute this method");
        _;
    }

    /**
     * @dev emitted after taking an insolvency snapshot
     * @param liquidator the address that initiated the snapshot
     * @param healthRatio the health ratio at the time of snapshot
     * @param timestamp a time of the snapshot
     **/
    event InsolvencySnapshot(address indexed liquidator, uint256 healthRatio, uint256 timestamp);

    /**
     * @dev emitted after a successful liquidation operation
     * @param liquidator the address that initiated the liquidation operation
     * @param timestamp a time of the liquidation
     **/
    event Liquidated(address indexed liquidator, uint256 timestamp);

    /**
     * @dev emitted when funds are repaid to the pool during a liquidation
     * @param liquidator the address initiating repayment
     * @param asset asset repaid by a liquidator
     * @param amount of repaid funds
     * @param timestamp of the repayment
     **/
    event LiquidationRepay(address indexed liquidator, bytes32 indexed asset, uint256 amount, uint256 timestamp);

    /**
     * @dev emitted when funds are sent to liquidator during liquidation
     * @param treasury the address of stability pool
     * @param asset token sent to a liquidator
     * @param amount of sent funds
     * @param timestamp of the transfer
     **/
    event LiquidationTransfer(address indexed treasury, bytes32 indexed asset, uint256 amount, uint256 timestamp);

    /**
     * @dev emitted when funds are sent to fees treasury during liquidation
     * @param treasury the address of fees treasury
     * @param asset token sent to a treasury
     * @param amount of sent funds
     * @param timestamp of the transfer
     **/
    event LiquidationFeesTransfer(address indexed treasury, bytes32 indexed asset, uint256 amount, uint256 timestamp);

    /**
     * @dev emitted when funds are sent to fees redistribution treasury during liquidation
     * @param treasury the address of fees treasury
     * @param asset token sent to a treasury
     * @param amount of sent funds
     * @param timestamp of the transfer
     **/
    event LiquidationFeesRedistributionTransfer(address indexed treasury, bytes32 indexed asset, uint256 amount, uint256 timestamp);

    /**
     * @dev emitted when a new liquidator gets whitelisted
     * @param liquidator the address being whitelisted
     * @param performer the address initiating whitelisting
     * @param timestamp of the whitelisting
     **/
    event LiquidatorWhitelisted(address indexed liquidator, address performer, uint256 timestamp);

    /**
     * @dev emitted when a liquidator gets delisted
     * @param liquidator the address being delisted
     * @param performer the address initiating delisting
     * @param timestamp of the delisting
     **/
    event LiquidatorDelisted(address indexed liquidator, address performer, uint256 timestamp);
}