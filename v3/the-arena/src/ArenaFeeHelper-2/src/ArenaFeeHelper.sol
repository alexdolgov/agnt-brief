// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "lib/uniswap-hooks/lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {PoolId} from "@uniswap/v4-core/src/types/PoolId.sol";
import {IArenaReferralRegistry} from "./intefaces/IArenaReferralRegistry.sol";
import {IArenaFeeHelperMinimal} from "./intefaces/IArenaFeeHelperMinimal.sol";

contract ArenaFeeHelper is Ownable, IArenaFeeHelperMinimal {
    uint256 public constant MAX_FEE_PPM = 10000;

    error TotalFeePpmExceedsMaxFeePpm();
    error TotalFeePpmBelowMinFeePpm();
    error FeeRecipientNotFound();
    error FeeSetterOnly();
    error FeesAlreadyInitialized();


    event FeeSetterSet(address indexed feeSetter, bool isFeeSetter);
    event ReferralRegistrySet(address referralRegistry);
    event FeeArraySet(PoolId indexed poolId, Fee[] fees);
    event ProtocolFeeSettingsSet(ProtocolFeeSettings settings);


    struct ProtocolFeeSettings {
        address recipient;
        uint16 protocolFeePpm;
        uint16 referralFeePpm;
    }

    mapping(PoolId => Fee[]) public poolIdToFees;
    mapping(PoolId => uint256) public poolIdToTotalFeePpm;
    mapping(address => bool) public isFeeSetter;
    IArenaReferralRegistry public referralRegistry;
    ProtocolFeeSettings public protocolFeeSettings;

    constructor(address _owner, address _referralRegistry, uint16 _protocolFeePpm, address _protocolFeeRecipient, uint16 _referralFeePpm) Ownable(_owner) {
        referralRegistry = IArenaReferralRegistry(_referralRegistry);
        protocolFeeSettings = ProtocolFeeSettings({
            recipient: _protocolFeeRecipient,
            protocolFeePpm: _protocolFeePpm,
            referralFeePpm: _referralFeePpm
        });
        emit ProtocolFeeSettingsSet(protocolFeeSettings);
        emit ReferralRegistrySet(_referralRegistry);
    }


    function setReferralRegistry(address _referralRegistry) public onlyOwner {
        referralRegistry = IArenaReferralRegistry(_referralRegistry);
        emit ReferralRegistrySet(_referralRegistry);
    }


    function setProtocolFeeSettings(address _recipient, uint16 _protocolFeePpm, uint16 _referralFeePpm) public onlyOwner {
        protocolFeeSettings = ProtocolFeeSettings({
            recipient: _recipient,
            protocolFeePpm: _protocolFeePpm,
            referralFeePpm: _referralFeePpm
        });
        require(_protocolFeePpm + _referralFeePpm <= MAX_FEE_PPM, TotalFeePpmExceedsMaxFeePpm());
        emit ProtocolFeeSettingsSet(protocolFeeSettings);
    }

    function setFeeSetter(address _feeSetter, bool _isFeeSetter) external onlyOwner {
        isFeeSetter[_feeSetter] = _isFeeSetter;
    }


    function updateFeesForPool(PoolId poolId, Fee[] calldata _fees) external onlyOwner {
        delete poolIdToFees[poolId];
        _setFeesForPool(poolId, _fees);

    }

    function initializeFeesForPool(PoolId poolId, Fee[] calldata _fees) external {
        require(isFeeSetter[msg.sender], FeeSetterOnly());
        require(poolIdToFees[poolId].length == 0, FeesAlreadyInitialized());
        _setFeesForPool(poolId, _fees);
    }

    function getFeesForPool(PoolId poolId) external view returns (Fee[] memory feeRecipients) {
        address referrer = referralRegistry.getReferrer(tx.origin);
        ProtocolFeeSettings memory settings = protocolFeeSettings;
        bool hasReferrer = referrer != address(0) && settings.referralFeePpm > 0;
        uint256 feeRecipientsLength = hasReferrer ? poolIdToFees[poolId].length + 2 : poolIdToFees[poolId].length + 1;
        uint256 protocolFeeIndex = feeRecipientsLength - 1; // Last index is protocol fee

        feeRecipients = new Fee[](feeRecipientsLength);
        Fee[] memory poolFees = poolIdToFees[poolId];
        uint256 poolFeesLength = poolFees.length;
        uint256 index = 0;
        for (; index < poolFeesLength; index++) {
            feeRecipients[index] = poolFees[index];
        }
        if (hasReferrer) {
            feeRecipients[index] = Fee({recipient: referrer, feePpm: settings.referralFeePpm});
            feeRecipients[protocolFeeIndex]= Fee({recipient: settings.recipient, feePpm: settings.protocolFeePpm - settings.referralFeePpm});
        }
        else {
            feeRecipients[protocolFeeIndex] = Fee({recipient: settings.recipient, feePpm: settings.protocolFeePpm});
        }

        return feeRecipients;
    }

    function _setFeesForPool(PoolId poolId, Fee[] memory _fees) internal {
        Fee[] storage poolFees = poolIdToFees[poolId];
        // fee array can be empty,
        uint256 total;
        // replace entire storage array
        for (uint256 i = 0; i < _fees.length; i++) {
            poolFees.push(_fees[i]);
            total += _fees[i].feePpm;
        }
        poolIdToTotalFeePpm[poolId] = total;

        if (total > MAX_FEE_PPM) revert TotalFeePpmExceedsMaxFeePpm();
        emit FeeArraySet(poolId, poolFees);
    }

    function getTotalFeePpm(PoolId poolId) external view returns (uint256) {
        return poolIdToTotalFeePpm[poolId] + protocolFeeSettings.protocolFeePpm;
    
    }


    //// CONVENIENCE FUNCTIONS ////

    function addFeeRecipient(PoolId poolId, address _recipient, uint16 _feePpm) external onlyOwner {
        poolIdToFees[poolId].push(Fee({recipient: _recipient, feePpm: _feePpm}));
        poolIdToTotalFeePpm[poolId] += _feePpm;
        require(poolIdToTotalFeePpm[poolId] <= MAX_FEE_PPM, TotalFeePpmExceedsMaxFeePpm());
        emit FeeArraySet(poolId, poolIdToFees[poolId]);
    }

    function removeFeeRecipient(PoolId poolId, address _recipient) external onlyOwner {
        Fee[] storage poolFees = poolIdToFees[poolId];
        uint256 feesLength = poolFees.length;
        uint256 i;
        for (; i < feesLength; i++) {
            if (poolFees[i].recipient == _recipient) {
                poolIdToTotalFeePpm[poolId] -= poolFees[i].feePpm;
                poolFees[i] = poolFees[feesLength - 1];
                poolFees.pop();
                break;
            }
        }
        if (feesLength == i) revert FeeRecipientNotFound();
        emit FeeArraySet(poolId, poolFees);

    }

    function updateRecipientAddress(
        PoolId poolId,
        address _recipientToReplace,
        address _newRecipient
    ) external onlyOwner {
        Fee[] storage fees = poolIdToFees[poolId];
        uint256 feesLength = fees.length;
        uint256 i;
        for (; i < feesLength; i++) {
            if (fees[i].recipient == _recipientToReplace) {
                fees[i].recipient = _newRecipient;
                break;
            }
        }
        if (feesLength == i) revert FeeRecipientNotFound();
        emit FeeArraySet(poolId, fees);
    }

    function updateRecipientFeePpm(PoolId poolId, address _recipient, uint16 _feePpm) external onlyOwner {
        Fee[] storage fees = poolIdToFees[poolId];
        uint256 feesLength = fees.length;
        uint256 i;
        for (; i < feesLength; i++) {
            if (fees[i].recipient == _recipient) {
                poolIdToTotalFeePpm[poolId] += _feePpm;
                poolIdToTotalFeePpm[poolId] -= fees[i].feePpm;
                fees[i].feePpm = _feePpm;
                break;
            }
        }
        if (feesLength == i) revert FeeRecipientNotFound();
        require(poolIdToTotalFeePpm[poolId] <= MAX_FEE_PPM, TotalFeePpmExceedsMaxFeePpm());
        emit FeeArraySet(poolId, fees);
    }

    function getProtocolFeeSettings() external view returns (ProtocolFeeSettings memory) {
        return protocolFeeSettings;
    }
}
