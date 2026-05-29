// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

interface IMultiTokenFeeSplitterFactory {

    event MultiTokenFeeSplitterCreated(address indexed creator, address indexed feeSplitter);

    function isFeeSplitter(address _feeSplitter) external view returns (bool);

    function createFeeSplitter(
        address[] memory initialRecipients,
        uint256[] memory initialRatio
    ) external returns (address);

}
