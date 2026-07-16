// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title IIFOV10.
 * @notice It is an interface for IFOV10.sol
 */
interface IIFOV10 {
    struct VestingConfig {
        uint256 percentage;
        uint256 cliff;
        uint256 duration;
        uint256 slicePeriodSeconds;
    }

    function depositPool(uint256 _amount, uint8 _pid) external payable;

    function harvestPool(uint8 _pid) external;

    function finalWithdraw(uint256 _lp0Amount, uint256 _lp1Amount, uint256 _offerAmount) external;

    function setPool(
        uint256 _offeringAmountPool,
        uint256 _raisingAmountPool,
        uint256 _limitPerUserInLP,
        bool _hasTax,
        uint256 _flatTaxRate,
        uint8 _pid,
        VestingConfig memory _vestingConfig
    ) external;

    function viewPoolInformation(uint256 _pid)
        external
        view
        returns (uint256, uint256, uint256, bool, uint256, uint256);

    function viewPoolVestingInformation(uint256 _pid) external view returns (uint256, uint256, uint256, uint256);

    function viewPoolTaxRateOverflow(uint256 _pid) external view returns (uint256);

    function viewUserAllocationPools(address _user, uint8[] calldata _pids) external view returns (uint256[] memory);

    function viewUserInfo(address _user, uint8[] calldata _pids)
        external
        view
        returns (uint256[] memory, bool[] memory);

    function viewUserOfferingAndRefundingAmountsForPools(address _user, uint8[] calldata _pids)
        external
        view
        returns (uint256[3][] memory);
}
