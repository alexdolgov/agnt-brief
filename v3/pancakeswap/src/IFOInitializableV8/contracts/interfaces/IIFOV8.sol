// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/** @title IIFOV8.
 * @notice It is an interface for IFOV8.sol
 */
interface IIFOV8 {
    enum SaleType {
        PUBLIC, //0
        PRIVATE, //1
        BASIC //2
    }

    struct VestingConfig {
        uint256 percentage;
        uint256 cliff;
        uint256 duration;
        uint256 slicePeriodSeconds;
    }

    struct PointConfig {
        uint256 campaignId;
        uint256 numberPoints;
        uint256 thresholdPoints;
    }

    function depositPool(uint256 _amount, uint8 _pid) external;

    function harvestPool(uint8 _pid) external;

    function finalWithdraw(uint256 _lpAmount, uint256 _offerAmount) external;

    function setPool(
        uint256 _offeringAmountPool,
        uint256 _raisingAmountPool,
        uint256 _limitPerUserInLP,
        bool _hasTax,
        uint256 _flatTaxRate,
        uint8 _pid,
        SaleType _saleType,
        VestingConfig memory _vestingConfig
    ) external;

    function updatePointParameters(
        PointConfig memory _pointConfig
    ) external;

    function viewPoolInformation(uint256 _pid)
    external
    view
    returns (
        uint256,
        uint256,
        uint256,
        bool,
        uint256,
        uint256,
        SaleType
    );

    function viewPoolVestingInformation(uint256 _pid)
    external
    view
    returns (
        uint256,
        uint256,
        uint256,
        uint256
    );

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