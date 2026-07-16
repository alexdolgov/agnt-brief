// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { IAccessControl } from "@openzeppelin-contracts-5.1.0/access/IAccessControl.sol";
import { IERC4626 } from "@openzeppelin-contracts-5.1.0/interfaces/IERC4626.sol";

interface IPolVault is IAccessControl, IERC4626 {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event FeeCollectorSet(address indexed newFeeCollector);
    event EntryFeeSet(uint256 newEntryFee);
    event ExitFeeSet(uint256 newExitFee);
    event PerformanceFeeSet(uint256 newPerformanceFee);
    event PayoutAmountSet(uint256 newPayoutAmount);
    event RewardVaultSet(address indexed newRewardVault);
    event Harvested(uint256 lbgtAmount);
    event FeeCollected(address indexed recipient, address indexed asset, uint256 amount);
    event HarvestModuleSet(address indexed harvestModule);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          ERRORS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error ZeroAddress();
    error InvalidFee(uint256 fee);
    error VaultDead();
    error NoHarvestModule();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          VIEWS                            */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function feeCollector() external view returns (address);
    function entryFee() external view returns (uint256);
    function exitFee() external view returns (uint256);
    function performanceFee() external view returns (uint256);
    function rewardVault() external view returns (IRewardVault);
    function rewardVaultEarned() external view returns (uint256);
    function dead() external view returns (bool);

    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewMint(uint256 shares) external view returns (uint256);
    function previewWithdraw(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function setFeeCollector(address _feeCollector) external;
    function setEntryFee(uint256 _entryFee) external;
    function setExitFee(uint256 _exitFee) external;
    function setPerformanceFee(uint256 _performanceFee) external;
    function pause() external;
    function unpause() external;
    function kill() external;
    function revive() external;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    PUBLIC FUNCTIONS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function deposit(uint256 assets, address receiver) external returns (uint256);
    function withdraw(uint256 shares, address receiver, address owner) external returns (uint256);
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);
    function mint(uint256 shares, address owner) external returns (uint256);
    function harvest() external returns (uint256);
}
