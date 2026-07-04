//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IPlatform {
    function getStatus() external view returns (LUtil.PlatformStatus);

    function getTokenAddress(address gameAddress)
        external
        view
        returns (address);

    function getBonusTokenAddress(address gameAddress)
        external
        view
        returns (address);

    function getGameConfig(address _gameAddress)
        external
        view
        returns (
            bool,
            bool,
            bool,
            bool
        );

    function getRoundDeployerAddress() external view returns (address);

    function getReferralSystemAddress() external view returns (address);

    function getPlatformOwnerAddress() external view returns (address);

    function getBuybackTreasuryAddress() external view returns (address);

    function getRevenueTreasuryAddress() external view returns (address);

    function getBuybackReceiverAddress() external view returns (address);

    function getRouterAddress() external view returns (address);

    function getEventEmitterAddress() external view returns (address);

    function getLinkTokenAddress() external view returns (address);

    function getVRFWrapperAddress() external view returns (address);

    function getCallbackGasLimit() external view returns (uint32);

    function getLinkFee() external view returns (uint256);

    function getGames(
        uint256 page,
        uint16 resultsPerPage,
        bool isReversed
    ) external view returns (address[] memory);

    function isGameExist(address game) external view returns (bool);

    function isRoundExist(address roundAddress)
        external
        view
        returns (
            bool,
            uint256,
            address
        );

    function setTokenAddress(address gameAddress, address tokenAddress)
        external;

    function setBonusTokenAddress(
        address gameAddress,
        address bonusTokenAddress
    ) external;
}
