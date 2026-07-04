pragma solidity 0.5.16;
import "../common/ExponentialNoError.sol";
import "../RToken/RToken.sol";

interface RewardControllerInterface {
    function markets(address) external view returns (bool, uint);
    function getAllMarkets() external view returns (RToken[] memory);
    function rewardAccrued(address) external view returns (uint);
    function rewardSupplyState(address) view external returns (uint224,uint32);
    function rewardBorrowState(address) view external returns (uint224,uint32);
    function rewardSpeeds(address) view external returns (uint256);
    function rewardSupplierIndex(address, address) view external returns (uint256);
    function rewardBorrowerIndex(address, address) view external returns (uint256);
    function rewardInitialIndex() view external returns (uint256);
}


contract RewardEstimator is ExponentialNoError {
    RewardControllerInterface public controller_;

    constructor(address _controller) public {
        controller_ = RewardControllerInterface(_controller);
    }

    function calculateReward(address holder) public view returns (uint256) {
        return calculateReward(controller_, holder);
    }

    function calculateReward(RewardControllerInterface controller, address holder) public view returns (uint256) {
        return calculateReward(controller, holder, controller.getAllMarkets());
    }

    function calculateReward(RewardControllerInterface controller, address holder, RToken[] memory rTokens) public view returns(uint256) {
        uint rewardAccrued;
        for (uint i = 0; i < rTokens.length; i++) {
            RToken rToken = rTokens[i];

            (bool isListed,) = controller.markets(address(rToken));
            if (!isListed) {
                continue;
            }

            Exp memory borrowIndex = Exp({mantissa: rToken.borrowIndex()});
            uint borrowIndexMantissa = calculateRewardBorrowIndex(controller, address(rToken), borrowIndex);
            rewardAccrued = add_(rewardAccrued, calculateBorrowerReward(controller, address(rToken), holder, borrowIndexMantissa));

            uint supplyIndexMantissa = calculateRewardSupplyIndex(controller, address(rToken));
            rewardAccrued = add_(rewardAccrued, calculateSupplierReward(controller, address(rToken), holder, supplyIndexMantissa));
        }

        return rewardAccrued;
    }


    function calculateRewardSupplyIndex(RewardControllerInterface controller, address rToken) internal view returns (uint256) {
        (uint supplyStateIndex, uint supplyStateBlock) = controller.rewardSupplyState(rToken);
        uint supplySpeed = controller.rewardSpeeds(rToken);
        uint blockNumber = block.number;
        uint deltaBlocks = sub_(blockNumber, supplyStateBlock);
        if (deltaBlocks > 0 && supplySpeed > 0) {
            uint supplyTokens = RToken(rToken).totalSupply();
            uint rewardAccrued = mul_(deltaBlocks, supplySpeed);
            Double memory ratio = supplyTokens > 0 ? fraction(rewardAccrued, supplyTokens) : Double({mantissa: 0});
            Double memory index = add_(Double({mantissa: supplyStateIndex}), ratio);
            return safe224(index.mantissa, "new index exceeds 224 bits");
        } else if (deltaBlocks > 0) {
            return safe224(supplyStateIndex, "new index exceeds 224 bits");
        }
    }

    function calculateSupplierReward(RewardControllerInterface controller, address rToken, address supplier, uint supplyIndexMantissa) internal view returns (uint256 supplierAccrued) {
        Double memory supplyIndex = Double({mantissa: supplyIndexMantissa});
        Double memory supplierIndex = Double({mantissa: controller.rewardSupplierIndex(rToken, supplier)});

        if (supplierIndex.mantissa == 0 && supplyIndex.mantissa > 0) {
            supplierIndex.mantissa = controller.rewardInitialIndex();
        }

        Double memory deltaIndex = sub_(supplyIndex, supplierIndex);
        uint supplieRTokens = RToken(rToken).balanceOf(supplier);
        uint supplierDelta = mul_(supplieRTokens, deltaIndex);
        supplierAccrued = add_(controller.rewardAccrued(supplier), supplierDelta);
    }

    function calculateRewardBorrowIndex(RewardControllerInterface controller, address rToken, Exp memory marketBorrowIndex) internal view returns (uint256) {
        (uint borrowStateIndex, uint borrowStateBlock) = controller.rewardBorrowState(rToken);
        uint borrowSpeed = controller.rewardSpeeds(rToken);
        uint blockNumber = block.number;
        uint deltaBlocks = sub_(blockNumber, uint(borrowStateBlock));

        if (deltaBlocks > 0 && borrowSpeed > 0) {
            uint borrowAmount = div_(RToken(rToken).totalBorrows(), marketBorrowIndex);
            uint rewardAccrued = mul_(deltaBlocks, borrowSpeed);
            Double memory ratio = borrowAmount > 0 ? fraction(rewardAccrued, borrowAmount) : Double({mantissa: 0});
            Double memory index = add_(Double({mantissa: borrowStateIndex}), ratio);
            return safe224(index.mantissa, "new index exceeds 224 bits");
        } else if (deltaBlocks > 0) {
            return marketBorrowIndex.mantissa;
        }
    }

    function calculateBorrowerReward(RewardControllerInterface controller, address rToken, address borrower, uint borrowIndexMantissa) internal view returns (uint borrowerAccrued) {
        Double memory borrowIndex = Double({mantissa: borrowIndexMantissa});
        Double memory borrowerIndex = Double({mantissa: controller.rewardBorrowerIndex(rToken, borrower)});

        if (borrowerIndex.mantissa > 0) {
            Double memory deltaIndex = sub_(borrowIndex, borrowerIndex);
            uint borrowerAmount = div_(RToken(rToken).borrowBalanceStored(borrower), Exp(borrowIndexMantissa));
            uint borrowerDelta = mul_(borrowerAmount, deltaIndex);
            borrowerAccrued = add_(controller.rewardAccrued(borrower), borrowerDelta);
        }
    }


}
