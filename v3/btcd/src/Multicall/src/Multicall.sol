// SPDX-License-Identifier: MIT-open-group
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract Multicall is Ownable {
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;

    struct MultiCallArgs {
        address target;
        uint256 value;
        bytes data;
    }

    struct BundledMultiCallArgs {
        MultiCallArgs[] calls;
    }

    struct BundledMultiCallResult {
        bytes[][] results;
        bool[] success;
    }

    error MulticallUnauthorizedCaller(address caller);
    error MulticallUnauthorizedTargetOrAsset(address target);
    error MulticallZeroAddress();
    error MulticallTargetAlreadyAuthorized(address target);
    error MulticallAssetAlreadyAuthorized(address asset);

    EnumerableSet.AddressSet private _authorizedCallers;
    EnumerableSet.AddressSet private _authorizedTargets;
    EnumerableSet.AddressSet private _authorizedAssets;
    mapping(address => bool) private _isAuthorizedAssetOrTarget;

    modifier onlyAuthorizedOrOwner() {
        _onlyAuthorizedOrOwner();
        _;
    }

    function _onlyAuthorizedOrOwner() internal view {
        require(
            _authorizedCallers.contains(msg.sender) || msg.sender == owner(),
            MulticallUnauthorizedCaller(msg.sender)
        );
    }

    constructor(address owner_) Ownable(owner_) {
        // Initialize the contract itself as an authorized caller
        _authorizedCallers.add(address(this));
        // Initialize the contract itself as an authorized target
        _authorizedTargets.add(address(this));
    }

    /**
     * @notice addAuthorizedTarget allows the owner to authorize an address as a target for multiCall
     * @param target_: address to be authorized
     */
    function addAuthorizedTarget(address target_) public onlyOwner {
        require(target_ != address(0), MulticallZeroAddress());
        require(
            !_isAuthorizedAssetOrTarget[target_],
            MulticallTargetAlreadyAuthorized(target_)
        );
        _authorizedTargets.add(target_);
        _isAuthorizedAssetOrTarget[target_] = true;
    }

    /**
     * @notice removeAuthorizedTarget allows the owner to remove an address from authorized targets for multiCall
     * @param target_: address to be removed
     */
    function removeAuthorizedTarget(address target_) public onlyOwner {
        require(
            _authorizedTargets.contains(target_),
            MulticallUnauthorizedTargetOrAsset(target_)
        );
        _authorizedTargets.remove(target_);
        _isAuthorizedAssetOrTarget[target_] = false;
    }

    /**
     * @notice addAuthorizedAsset allows the owner to authorize an asset
     * @param asset_: address of the asset to be authorized
     */
    function addAuthorizedAsset(address asset_) public onlyOwner {
        require(asset_ != address(0), MulticallZeroAddress());
        require(
            !_isAuthorizedAssetOrTarget[asset_],
            MulticallAssetAlreadyAuthorized(asset_)
        );
        _authorizedAssets.add(asset_);
        _isAuthorizedAssetOrTarget[asset_] = true;
    }

    /**
     * @notice removeAuthorizedAsset allows the owner to remove an authorized asset
     * @param asset_: address of the asset to be removed
     */
    function removeAuthorizedAsset(address asset_) public onlyOwner {
        require(
            _authorizedAssets.contains(asset_),
            MulticallUnauthorizedTargetOrAsset(asset_)
        );
        _authorizedAssets.remove(asset_);
        _isAuthorizedAssetOrTarget[asset_] = false;
    }

    /**
     * @notice addAuthorizedCaller allows the owner to authorize an address to use multiCall
     * @param caller_: address to be authorized
     */
    function addAuthorizedCaller(address caller_) public onlyOwner {
        _authorizedCallers.add(caller_);
    }

    /**
     * @notice removeAuthorizedCaller allows the owner to remove an address from authorized callers for multiCall
     * @param caller_: address to be removed
     */
    function removeAuthorizedCaller(address caller_) public onlyOwner {
        _authorizedCallers.remove(caller_);
    }

    /**
     * @notice bundledMultiCall allows authorized callers to make multiple multiCall batches within a single transaction
     * @dev Each batch can succeed or fail independently
     * @param bundledData_: array of BundledMultiCallArgs containing multiple multiCall data
     */
    function bundledMultiCall(
        BundledMultiCallArgs[] memory bundledData_
    )
        public
        payable
        onlyAuthorizedOrOwner
        returns (BundledMultiCallResult memory ret)
    {
        ret = BundledMultiCallResult({
            results: new bytes[][](bundledData_.length),
            success: new bool[](bundledData_.length)
        });
        for (uint256 i = 0; i < bundledData_.length; i++) {
            try this.multiCall(bundledData_[i].calls) returns (
                bytes[] memory results
            ) {
                ret.results[i] = results;
                ret.success[i] = true;
            } catch {
                ret.results[i] = new bytes[](0);
                ret.success[i] = false;
            }
        }
    }

    /**
     * @notice multiCall allows authorized callers to make multiple function calls within a single transaction
     * @param cdata_: array of abi encoded data with the function calls (function signature + arguments)
     */
    function multiCall(
        MultiCallArgs[] memory cdata_
    ) public payable onlyAuthorizedOrOwner returns (bytes[] memory) {
        return _multiCall(cdata_);
    }

    /**
     * @notice _multiCall allows EOA to make multiple function calls within a single transaction
     * impersonating the factory
     * @param cdata_: array of abi encoded data with the function calls (function signature + arguments)
     */
    function _multiCall(
        MultiCallArgs[] memory cdata_
    ) internal returns (bytes[] memory results) {
        results = new bytes[](cdata_.length);
        for (uint256 i = 0; i < cdata_.length; i++) {
            require(
                _isAuthorizedAssetOrTarget[cdata_[i].target],
                MulticallUnauthorizedTargetOrAsset(cdata_[i].target)
            );
            results[i] = cdata_[i].target.functionCallWithValue(
                cdata_[i].data,
                cdata_[i].value
            );
        }
    }

    /**
     * @notice isAuthorizedTarget checks if a target is authorized for multiCall
     * @param target_: address to be checked
     * @return bool indicating whether the address is authorized or not
     */
    function isAuthorizedTarget(address target_) public view returns (bool) {
        return _authorizedTargets.contains(target_);
    }

    /**
     * @notice getAuthorizedTargets returns the list of authorized targets
     * @return array of addresses that are authorized for multiCall
     */
    function getAuthorizedTargets() public view returns (address[] memory) {
        return _authorizedTargets.values();
    }

    /**
     * @notice isAuthorizedCaller checks if a caller is authorized to use multiCall
     * @param caller_: address to be checked
     * @return bool indicating whether the address is authorized or not
     */
    function isAuthorizedCaller(address caller_) public view returns (bool) {
        return _authorizedCallers.contains(caller_);
    }

    /**
     * @notice getAuthorizedCallers returns the list of authorized callers
     * @return array of addresses that are authorized to use multiCall
     */
    function getAuthorizedCallers() public view returns (address[] memory) {
        return _authorizedCallers.values();
    }

    /**
     * @notice isAuthorizedAsset checks if an asset is authorized
     * @param asset_: address to be checked
     * @return bool indicating whether the address is authorized or not
     */
    function isAuthorizedAsset(address asset_) public view returns (bool) {
        return _authorizedAssets.contains(asset_);
    }

    /**
     * @notice getAuthorizedAssets returns the list of authorized assets
     * @return array of addresses that are authorized assets
     */
    function getAuthorizedAssets() public view returns (address[] memory) {
        return _authorizedAssets.values();
    }
}
