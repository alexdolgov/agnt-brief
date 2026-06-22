// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

interface ITrustedForwarder {

    event UpdateRouter(address sender, address oldAddress, address newAddress);
    event UpdateMaxPledgeFee(address sender, uint256 oldFee, uint256 newFee);
    event UpdatePledgeFee(address sender, uint256 oldFee, uint256 newFee);
    event SetUserRelayer(address sender, address relayer, bool enable);
    event SetPublicRelayer(address sender, address relayer, bool enable);

    struct CheckUserRelayerParam {
        address origin;
        address relayer;
    }

    struct CheckUserRelayerResp {
        bool bundled;
        uint256 allowance;
    }

    function pledgeFee() external view returns (uint256);

    function pledgeAddress() external view returns (address);

    function approve(address account, address relayer, bool enable) external;

    function originAccount(address relayer) external view returns (address account);

}
