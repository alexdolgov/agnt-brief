pragma solidity 0.5.17;

import "../core/Comptroller.sol";
import "../core/ComptrollerStorage.sol";
import "../core/ExponentialNoError.sol";
import "../core/MToken.sol";

/**
 * @title A contract to view rewards on a comptroller
 * @author Moonwell
 */
contract ComptrollerRewardViewer is ExponentialNoError {
    /// @notice The address of the comptroller to read from.
    address payable public comptrollerAddress;

    /**
     * @notice Construct a new ComptrollerRewardViewer viewing the given Comptroller
     * @param _comptrollerAddress The address of the Comptroller to view rewards on.
     */
    constructor(address payable _comptrollerAddress) public {
        comptrollerAddress = _comptrollerAddress;
    }

    /**
     * @notice Get pending rewards for the given address across all markets and borrowing / supplying.
     * @param holder The address to calculate rewards for.
     * @return A tuple where the first element is the amount of native assets and the second is an amount of gov tokens.
     */
    function getRewards(address holder) public view returns (uint, uint) {
        uint nativeRewards = 0;
        uint govTokenRewards = 0;


        ComptrollerVXStorage comptrollerStorage = ComptrollerVXStorage(
            comptrollerAddress
        );
        Comptroller comptroller = Comptroller(
            comptrollerAddress
        );


        MToken []  memory allMarkets = comptroller.getAllMarkets();

        for (uint i = 0; i < allMarkets.length; i++) {
            MToken mToken = allMarkets[i];
            // require(markets[address(mToken)].isListed, "market must be listed");

            nativeRewards = add_(nativeRewards, getBorrowerReward(0, address(mToken), holder));
            nativeRewards = add_(nativeRewards, getSupplierReward(0, address(mToken), holder));

            govTokenRewards = add_(govTokenRewards, getBorrowerReward(1, address(mToken), holder));
            govTokenRewards = add_(govTokenRewards, getSupplierReward(1, address(mToken), holder));
        }

        return (nativeRewards, govTokenRewards);
    }

    /**
     * @notice Get the pending reward for the given supplier.
     * @param rewardType The type of reward to calculate. 0 for WELL, 1 for GLMR
     * @param mTokenAddress The market in which the supplier is interacting
     * @param supplier The address to calculate rewards for.
     */
    function getSupplierReward(
        uint8 rewardType,
        address mTokenAddress,
        address supplier
    ) public view returns (uint256) {
        require(rewardType <= 1, "rewardType is invalid");

        ComptrollerVXStorage comptrollerStorage = ComptrollerVXStorage(
            comptrollerAddress
        );
        Comptroller comptroller = Comptroller(
            comptrollerAddress
        );

        uint224 supplyStateIndex = getSupplyIndex(rewardType, mTokenAddress);
        uint32 supplyStateTimestamp = safe32(block.timestamp, "overflow");

        Double memory supplyIndex = ExponentialNoError
            .Double({mantissa: supplyStateIndex});
        Double memory supplierIndex = ExponentialNoError
            .Double({
                mantissa: comptrollerStorage.rewardSupplierIndex(rewardType,mTokenAddress ,supplier)
            });

        if (supplierIndex.mantissa == 0 && supplyIndex.mantissa > 0) {
            supplierIndex.mantissa = comptroller.initialIndexConstant();
        }

        Double memory deltaIndex = sub_(
            supplyIndex,
            supplierIndex
        );
        uint256 supplierTokens = MToken(mTokenAddress).balanceOf(supplier);
        uint256 supplierDelta = mul_(
            supplierTokens,
            deltaIndex
        );
        uint supplierRewardAccrued = comptrollerStorage.rewardAccrued(rewardType, supplier);
        uint256 supplierAccrued = add_(
            supplierRewardAccrued,
            supplierDelta
        );

        return supplierAccrued;
    }

    /**
     * @notice Get the pending reward for the given borrower.
     * @param rewardType The type of reward to calculate. 0 for WELL, 1 for GLMR
     * @param mTokenAddress The market in which the borrower is interacting
     * @param borrower The address to calculate rewards for.
     */
    function getBorrowerReward(uint8 rewardType, address mTokenAddress, address borrower) public view returns (uint) {
        require(rewardType <= 1, "rewardType is invalid");

        ComptrollerVXStorage comptrollerStorage = ComptrollerVXStorage(
            comptrollerAddress
        );
        Comptroller comptroller = Comptroller(
            comptrollerAddress
        );

        MToken mToken = MToken(mTokenAddress);

        uint borrowerRewardAccrued = comptrollerStorage.rewardAccrued(rewardType, borrower);
        uint rewardBorrowerIndex = comptrollerStorage.rewardBorrowerIndex(rewardType, mTokenAddress, borrower);
        uint borrowedBalance = mToken.borrowBalanceStored(borrower);

        Exp memory marketBorrowIndex = Exp({mantissa: mToken.borrowIndex()});

        uint224 borrowStateIndex = getBorrowIndex(rewardType, mTokenAddress);
        uint32 borrowStateTimestamp = safe32(block.timestamp, "overflow");

        Double memory borrowIndex = Double({mantissa: borrowStateIndex});
        Double memory borrowerIndex = Double({mantissa: rewardBorrowerIndex});

        if (borrowerIndex.mantissa > 0) {
            Double memory deltaIndex = sub_(borrowIndex, borrowerIndex);
            uint borrowerAmount = div_(borrowedBalance, marketBorrowIndex);
            uint borrowerDelta = mul_(borrowerAmount, deltaIndex);
            uint borrowerAccrued = add_(borrowerRewardAccrued, borrowerDelta);

            return borrowerAccrued;
        }
        return 0;
    }

    /**
     * @notice Get the theoretical supply index at the current block time.
     * @param rewardType The type of reward to retrieve
     * @param mTokenAddress The market address to retrieve the index for.
     */
    function getSupplyIndex(uint8 rewardType, address mTokenAddress) internal view returns (uint224) {
        ComptrollerVXStorage comptrollerStorage = ComptrollerVXStorage(
            comptrollerAddress
        );
        Comptroller comptroller = Comptroller(
            comptrollerAddress
        );
        MToken mToken = MToken(mTokenAddress);

        (uint224 cachedSupplyStateIndex, uint32 cachedSupplyStateTimestamp) = comptrollerStorage.rewardSupplyState(rewardType, mTokenAddress);
        uint supplySpeed = comptrollerStorage.supplyRewardSpeeds(rewardType, mTokenAddress);

        uint current = block.timestamp;
        uint deltaTimestamps = sub_(current, uint(cachedSupplyStateTimestamp));

        uint224 supplyStateIndex = cachedSupplyStateIndex;
        if (deltaTimestamps > 0 && supplySpeed > 0) {
            uint supplyTokens = mToken.totalSupply();
            uint wellAccrued = mul_(deltaTimestamps, supplySpeed);
            Double memory ratio = supplyTokens > 0 ? fraction(wellAccrued, supplyTokens) : Double({mantissa: 0});
            Double memory index = add_(Double({mantissa: cachedSupplyStateIndex}), ratio);
            supplyStateIndex = safe224(index.mantissa, "overflow");
        }

        return supplyStateIndex;
    }

    /**
     * @notice Get the theoretical borrow index at the current block time.
     * @param rewardType The type of reward to retrieve
     * @param mTokenAddress The market address to retrieve the index for.
     */
    function getBorrowIndex(uint8 rewardType, address mTokenAddress) internal view returns (uint224) {
        ComptrollerVXStorage comptrollerStorage = ComptrollerVXStorage(
            comptrollerAddress
        );
        Comptroller comptroller = Comptroller(
            comptrollerAddress
        );
        MToken mToken = MToken(mTokenAddress);

        (uint224 cachedBorrowIndex, uint32 cachedBorrowTimestamp) = comptrollerStorage.rewardBorrowState(rewardType, mTokenAddress);
        uint borrowSpeed = comptrollerStorage.borrowRewardSpeeds(rewardType, mTokenAddress);
        uint current = block.timestamp;
        uint deltaTimestamps = sub_(current, uint(cachedBorrowTimestamp));

        Exp memory marketBorrowIndex = Exp({mantissa: mToken.borrowIndex()});

        uint224 borrowStateIndex = cachedBorrowIndex;
        if (deltaTimestamps > 0 && borrowSpeed > 0) {
            uint borrowAmount = div_(mToken.totalBorrows(), marketBorrowIndex);
            uint wellAccrued = mul_(deltaTimestamps, borrowSpeed);
            Double memory ratio = borrowAmount > 0 ? fraction(wellAccrued, borrowAmount) : Double({mantissa: 0});
            Double memory index = add_(Double({mantissa: cachedBorrowIndex}), ratio);
            borrowStateIndex = safe224(index.mantissa, "overflow");            
        }

        return borrowStateIndex;
    }
}
