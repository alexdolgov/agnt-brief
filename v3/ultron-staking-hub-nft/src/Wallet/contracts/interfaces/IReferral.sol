// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

interface IReferral {
    function isExist(address referral) external view returns (bool);

    function getReferrer(address referral) external view returns (address);

    function updateUserPoints(
        address roundAddress,
        address user,
        uint256 ticketsCount
    ) external;

    function setReferrer(address referral, address referrer) external;

    function startProcessing(address roundAddress) external;

    function setRefunded(address roundAddress) external;
}
