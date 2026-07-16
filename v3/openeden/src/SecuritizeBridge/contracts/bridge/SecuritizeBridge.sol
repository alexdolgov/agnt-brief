/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity 0.8.20;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IDSToken} from "@securitize/digital_securities/contracts/token/IDSToken.sol";
import {IDSServiceConsumer} from "@securitize/digital_securities/contracts/service/IDSServiceConsumer.sol";
import {IDSRegistryService} from "@securitize/digital_securities/contracts/registry/IDSRegistryService.sol";
import {IDSComplianceService} from "@securitize/digital_securities/contracts/compliance/IDSComplianceService.sol";
import {IDSComplianceConfigurationService} from "@securitize/digital_securities/contracts/compliance/IDSComplianceConfigurationService.sol";
import {TokenIssuer} from "@securitize/digital_securities/contracts/issuance/TokenIssuer.sol";
import {BaseDSContract} from "@securitize/digital_securities/contracts/utils/BaseDSContract.sol";
import {IWormholeReceiver} from "../wormhole/interfaces/IWormholeReceiver.sol";
import {IWormholeRelayer} from "../wormhole/interfaces/IWormholeRelayer.sol";
import {BaseContract} from "../utils/BaseContract.sol";
import {ISecuritizeBridge} from "./ISecuritizeBridge.sol";

contract SecuritizeBridge is IWormholeReceiver, ISecuritizeBridge, BaseContract, ReentrancyGuardUpgradeable {
    string private constant BRIDGE_REASON = 'bridge';
    uint256 internal constant US = 1;

    IWormholeRelayer public wormholeRelayer;
    IDSToken public dsToken;
    IDSServiceConsumer public dsServiceConsumer;
    uint256 public gasLimit;
    uint16 public whChainId;

    mapping(uint16 wmChainId => address bridge) public bridgeAddresses;

    modifier addressNotZero(address _address) {
        if (_address == address(0)) {
            revert NonZeroAddress();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(uint16 _whChainId, address _wormholeRelayer, address _dsToken, address _owner) public override onlyProxy initializer {
        __BaseDSContract_init(_owner);
        whChainId = _whChainId;
        wormholeRelayer = IWormholeRelayer(_wormholeRelayer);
        dsToken = IDSToken(_dsToken);
        dsServiceConsumer = IDSServiceConsumer(_dsToken);
        gasLimit = 2_500_000;
    }

    function setBridgeAddress(uint16 chainId, address bridgeAddress) external override onlyOwner {
        bridgeAddresses[chainId] = bridgeAddress;
        emit BridgeAddressAdded(chainId, bridgeAddress);
    }

    function removeBridgeAddress(uint16 chainId) external override onlyOwner {
        delete bridgeAddresses[chainId];
        emit BridgeAddressRemoved(chainId);
    }

    function updateGasLimit(uint256 _gasLimit) external override onlyOwner {
        emit GasLimitUpdate(gasLimit, _gasLimit);
        gasLimit = _gasLimit;
    }

    function quoteBridge(uint16 targetChain) public override view returns (uint256 cost) {
        cost = _quoteBridge(wormholeRelayer, gasLimit, targetChain);
    }

    function bridgeDSTokens(uint16 targetChain, uint256 value) external override payable whenNotPaused {
        require(value > 0, "DSToken value must be greater than 0");
        IWormholeRelayer _wormholeRelayer = wormholeRelayer;
        uint256 _gasLimit = gasLimit;
        uint256 cost = _quoteBridge(_wormholeRelayer, _gasLimit, targetChain);
        require(msg.value >= cost, "Transaction value should be equal or greater than quoteBridge response");
        require(dsToken.balanceOf(_msgSender()) >= value, "Not enough balance in source chain to bridge");
        address targetAddress = bridgeAddresses[targetChain];
        require(targetAddress != address(0), "No bridge address available");

        IDSServiceConsumer _dsServiceConsumer = dsServiceConsumer;
        IDSRegistryService registryService = IDSRegistryService(_dsServiceConsumer.getDSService(_dsServiceConsumer.REGISTRY_SERVICE()));
        require(registryService.isWallet(_msgSender()), "Investor not registered");

        string memory investorId = registryService.getInvestor(_msgSender());

        validateLockedTokens(investorId, value, registryService, _dsServiceConsumer);

        InvestorDetail memory investorDetail = getInvestorData(investorId, registryService);

        // Perform DSToken burn on source chain
        dsToken.burn(_msgSender(), value, BRIDGE_REASON);

        // Send Relayer message
        _wormholeRelayer.sendPayloadToEvm{value: msg.value} (
            targetChain,
            targetAddress,
            abi.encode(
                investorDetail.investorId,
                value,
                _msgSender(),
                investorDetail.country,
                investorDetail.attributeValues,
                investorDetail.attributeExpirations
            ), // payload
            0, // no receiver value needed since we"re just passing a message
            _gasLimit,
            whChainId,
            _msgSender()
        );

        emit DSTokenBridgeSend(targetChain, address(dsToken), _msgSender(), value);
    }

    function receiveWormholeMessages(
        bytes memory payload,
        bytes[] memory, // additionalVaas
        bytes32 sourceBridge, // address that called "sendPayloadToEvm" (DSTokenBridge contract)
        uint16 sourceChain,
        bytes32 // unique identifier of delivery
    ) public override payable whenNotPaused {
        require(_msgSender() == address(wormholeRelayer), "Only an authorized relayer can call this method");
        require(address(uint160(uint256(sourceBridge))) == bridgeAddresses[sourceChain], "Wrong bridge initiator");

        // Parse the payload and do the corresponding actions
        (
            string memory investorId,
            uint256 value,
            address investorWallet,
            string memory country,
            uint256[] memory attributeValues,
            uint256[] memory attributeExpirations
        ) = abi.decode(payload, (string, uint256, address, string, uint256[], uint256[]));

        // Perform DSToken operation
        IDSRegistryService registryService = IDSRegistryService(dsServiceConsumer.getDSService(dsServiceConsumer.REGISTRY_SERVICE()));

        uint8[] memory attributeIds = new uint8[](4);
        attributeIds[0] = 1;  // KYC
        attributeIds[1] = 2;  // Accredited
        attributeIds[2] = 4;  // Qualified
        attributeIds[3] = 8;  // Professional

        address[] memory investorWallets = new address[](1);
        investorWallets[0] = investorWallet;

        registryService.updateInvestor(investorId, investorId, country, investorWallets, attributeIds, attributeValues, attributeExpirations);
        dsToken.issueTokens(investorWallet, value);

        emit DSTokenBridgeReceive(sourceChain, address(dsToken), investorWallet, value);
    }


    function withdrawETH(address payable _to) external nonReentrant addressNotZero(_to) onlyOwner {
        uint256 amount = address(this).balance;

        (bool sent, ) = _to.call{value: amount}("");
        if (!sent) revert ETHTransferError();
        emit ETHWithdrawn(_to, amount);
    }

    /////// private/internal methods ////////
    function _quoteBridge(IWormholeRelayer relayer, uint256 _gasLimit, uint16 targetChain) internal view returns (uint256 cost) {
        (cost, ) = relayer.quoteEVMDeliveryPrice(targetChain, 0, _gasLimit);
    }

    function getInvestorData(string memory investorId, IDSRegistryService registryService) private view returns (InvestorDetail memory) {
        (string memory country, uint256[] memory attributeValues, uint256[] memory attributeExpirations, , , , ) = registryService.getInvestorDetailsFull(investorId);

        InvestorDetail memory detail = InvestorDetail({
            investorId: investorId,
            country: country,
            attributeValues: attributeValues,
            attributeExpirations: attributeExpirations
        });

        return detail;
    }

    function validateLockedTokens(string memory investorId, uint256 _value, IDSRegistryService _registryService, IDSServiceConsumer _dsServiceConsumer) private view {
        IDSComplianceService complianceService = IDSComplianceService(_dsServiceConsumer.getDSService(_dsServiceConsumer.COMPLIANCE_SERVICE()));
        IDSComplianceConfigurationService complianceConfigurationService = IDSComplianceConfigurationService(_dsServiceConsumer.getDSService(_dsServiceConsumer.COMPLIANCE_CONFIGURATION_SERVICE()));

        string memory country = _registryService.getCountry(investorId);
        uint256 region = complianceConfigurationService.getCountryCompliance(country);

        // lock/hold up validation
        uint256 lockPeriod = (region == US) ? complianceConfigurationService.getUSLockPeriod() : complianceConfigurationService.getNonUSLockPeriod();
        uint256 availableBalanceForTransfer = complianceService.getComplianceTransferableTokens(_msgSender(), block.timestamp, uint64(lockPeriod));
        require(availableBalanceForTransfer >= _value, "Not enough unlocked balance in source chain to bridge");
    }
}
