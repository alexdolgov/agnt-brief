// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../../altitude-v2/contracts/libraries/uniswap-v3/TransferHelper.sol";
import "../../altitude-v2/contracts/interfaces/internal/flashloan/IFlashLoanStrategy.sol";
import "../../altitude-v2/contracts/interfaces/external/strategy/lending/Aave/IFlashLoanReceiver.sol";
import "../../altitude-v2/contracts/interfaces/external/strategy/lending/Aave/ILendingPoolAddressProvider.sol";
import "../../altitude-v2/contracts/interfaces/external/strategy/lending/Aave/v2/ILendingPool.sol";
import "../libraries/Structs.sol";
import "../interfaces/IReceiver.sol";
import "../interfaces/IFlashloanHelper.sol";
import "../libraries/Errors.sol";

contract FlashloanHelper is IFlashLoanReceiver, IFlashloanHelper {
    // using RMath for uint256;

    IAaveLendingPool public immutable AAVE_LENDING_POOL_V2;

    constructor(IAaveLendingPoolAddressesProvider provider) {
        AAVE_LENDING_POOL_V2 = IAaveLendingPool(provider.getLendingPool());
    }

    // @notice This is the base function for executing aavev2 flashloan provider
    // @param info The parameters for the flashloan
    function flashLoan(FlashLoanStruct.Info calldata info) external override {
        if (info.initiator != msg.sender) {
            revert Errors.FLASH_LOAN_MISSTEP();
        }

        address[] memory assets = new address[](1);
        assets[0] = address(info.asset);
        uint256[] memory amounts = new uint256[](1);
        amounts[0] = info.amount;
        uint256[] memory modes = new uint256[](1);
        modes[0] = 0; // 0 = no debt, 1 = stable, 2 = variable

        AAVE_LENDING_POOL_V2.flashLoan(
            address(this), // receiverAddress
            assets,
            amounts,
            modes,
            address(0), // onBehalfOf
            abi.encode(info),
            0 // referralCode
        );
    }

    // @notice This function is called by Aave FlashLoan
    // when sending loaned asset amount
    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        if (
            msg.sender != address(AAVE_LENDING_POOL_V2) ||
            initiator != address(this)
        ) {
            revert Errors.FLASH_LOAN_MISSTEP();
        }

        FlashLoanStruct.Info memory info = abi.decode(params, (FlashLoanStruct.Info));
        if (info.amount != amounts[0]) {
            revert Errors.FLASH_LOAN_MISSTEP();
        }

        TransferHelper.safeTransfer(assets[0], info.targetAddress, amounts[0]);
        IReceiver(info.targetAddress).receiveData(info.data, premiums[0]);

        // Approve the Aave LendingPool contract allowance to *pull* the owed amount
        uint256 amountOwing = amounts[0] + premiums[0];
        TransferHelper.safeApprove(
            assets[0],
            address(AAVE_LENDING_POOL_V2),
            amountOwing
        );

        return true;
    }
}
