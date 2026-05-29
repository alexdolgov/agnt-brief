// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { MultiTokenFeeSplitter } from "./MultiTokenFeeSplitter.sol";
import { IMultiTokenFeeSplitterFactory } from "./interfaces/IMultiTokenFeeSplitterFactory.sol";

contract MultiTokenFeeSplitterFactory is IMultiTokenFeeSplitterFactory, Ownable {

    mapping(address => bool) private _feeSplitters;

    function isFeeSplitter(address _feeSplitter) external view override returns (bool) {
        return _feeSplitters[_feeSplitter];
    }

    /// @notice Deploys a new MultiTokenFeeSplitter contract
    /// @param initialRecipients The initial list of recipients for the fee splitter
    /// @param initialRatio The initial distribution ratios corresponding to the recipients
    /// @return The address of the newly deployed fee splitter contract
    function createFeeSplitter (
        address[] memory initialRecipients,
        uint256[] memory initialRatio
    ) external override onlyOwner returns (address) {
        MultiTokenFeeSplitter feeSplitter = new MultiTokenFeeSplitter(initialRecipients, initialRatio);
        feeSplitter.transferOwnership(msg.sender); // Transfer ownership to the creator

        emit MultiTokenFeeSplitterCreated(msg.sender, address(feeSplitter));
        _feeSplitters[address(feeSplitter)] = true;

        return address(feeSplitter);
    }
}