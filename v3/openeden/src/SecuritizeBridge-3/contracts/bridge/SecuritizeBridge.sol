/**
 * Copyright 2026 Securitize Inc. All rights reserved.
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
pragma solidity 0.8.22;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IDSToken} from "@securitize/digital_securities/contracts/token/IDSToken.sol";
import {IDSServiceConsumer} from "@securitize/digital_securities/contracts/service/IDSServiceConsumer.sol";
import {IDSRegistryService} from "@securitize/digital_securities/contracts/registry/IDSRegistryService.sol";
import {IDSComplianceService} from "@securitize/digital_securities/contracts/compliance/IDSComplianceService.sol";
import {IDSComplianceConfigurationService} from "@securitize/digital_securities/contracts/compliance/IDSComplianceConfigurationService.sol";
import {TokenIssuer} from "@securitize/digital_securities/contracts/issuance/TokenIssuer.sol";
import {BaseDSContract} from "@securitize/digital_securities/contracts/utils/BaseDSContract.sol";
import {BaseContract} from "../utils/BaseContract.sol";
import {ISecuritizeBridge} from "./ISecuritizeBridge.sol";
import {IExecutorQuoterRouter} from "../wormhole/interfaces/IExecutorQuoterRouter.sol";
import {IWormhole} from "../wormhole/interfaces/IWormhole.sol";
import {ExecutorMessages} from "../wormhole/libraries/ExecutorMessages.sol";
import {RelayInstructions} from "../wormhole/libraries/RelayInstructions.sol";

/**
 * @title SecuritizeBridge
 * @notice Cross-chain DS Token bridge with compliance validation using Wormhole Executor framework
 * @dev Inherits from ISecuritizeBridge for bridge interface, BaseContract for ownership management,
 *      and ReentrancyGuardUpgradeable for reentrancy protection
 *
 * @custom:executor-framework
 * This contract uses the Wormhole Executor framework instead of the deprecated Standard Relayer:
 * - Off-chain signed quotes for execution pricing via ExecutorQuoterRouter
 * - Direct VAA verification in destination contracts using Wormhole Core
 * - Sequence-based replay protection for message integrity
 * - Decentralized execution network with competitive pricing
 * - Manual VAA processing with parseAndVerifyVM integration
 *
 * @custom:features
 * - Cross-chain DS Token transfers with comprehensive compliance validation
 * - Integration with Securitize Digital Securities infrastructure (registry, compliance services)
 * - Wormhole Executor framework for decentralized cross-chain message delivery
 * - Configurable gas limits, consistency levels, and bridge addresses per chain
 * - Automatic investor data synchronization across chains
 * - ETH refund mechanism for excess fees paid by users
 * - Upgradeable contract design with UUPS proxy pattern
 *
 * @custom:compliance-integration
 * - Validates investor registration and KYC status before bridging
 * - Enforces lock-up periods and transferable balance requirements
 * - Synchronizes investor attributes (KYC, Accredited, Qualified, Professional) across chains
 * - Integrates with DS Registry, Compliance, and Compliance Configuration services
 * - Burns tokens on source chain only after compliance validation passes
 *
 * @custom:cross-chain-flow
 * Source Chain (bridgeDSTokens):
 * 1. Validates investor compliance and token lock-up status
 * 2. Burns DS tokens from user's wallet
 * 3. Publishes VAA via Wormhole Core with investor data payload
 * 4. Gets execution quote from ExecutorQuoterRouter
 * 5. Requests cross-chain execution via Executor framework
 * 6. Refunds excess ETH to user
 *
 * Destination Chain (executeVAAv1):
 * 1. Verifies VAA authenticity using Wormhole Core
 * 2. Validates source chain and bridge address authorization
 * 3. Implements sequence-based replay protection
 * 4. Updates investor registry with cross-chain data
 * 5. Issues DS tokens to investor's wallet on destination chain
 *
 * @custom:security-considerations
 * - Implements reentrancy protection on all state-changing functions
 * - Uses owner-based access control for administrative functions
 * - Validates bridge addresses and chain configurations before operations
 * - Enforces compliance rules before allowing token burns
 * - Direct VAA verification prevents reliance on external message processors
 * - Sequence-based replay protection prevents double-spending attacks
 * - Peer verification ensures messages originate from authorized bridge contracts
 *
 * @custom:migration-notes
 * Migrated from Standard Relayer to Executor framework:
 * - Added direct VAA verification using parseAndVerifyVM
 * - Implemented manual replay protection with isVaaConsumed mapping
 * - Integrated ExecutorQuoterRouter for dynamic fee estimation
 * - Removed dependency on Standard Relayer's automatic message delivery
 * - Enhanced error handling and refund mechanisms for executor fees
 * - Maintained compliance validation and investor data synchronization features
 *
 * @custom:gas-optimization
 * - Caches storage variables in functions to reduce SLOAD operations
 * - Uses memory structs for complex data to minimize storage reads
 * - Implements efficient address-to-bytes32 conversion for Wormhole compatibility
 * - Optimizes VAA payload encoding for minimal cross-chain data transfer costs
 */
contract SecuritizeBridge is ISecuritizeBridge, BaseContract, ReentrancyGuardUpgradeable {
    string private constant BRIDGE_REASON = 'bridge';

    IDSToken public dsToken;
    IDSServiceConsumer public dsServiceConsumer;

    mapping(uint16 wmChainId => bytes32 bridge) public bridgeAddresses;

    IWormhole public wormholeCore;
    IExecutorQuoterRouter public executorQuoterRouter;
    address public quoterAddr;

    /// @dev ethereum: instant 200 - safe 201 - otherwise finalized
    uint8 public consistencyLevel;

    uint8 internal constant US = 1;

    // replay protection
    mapping(bytes32 vmHash => bool isConsumed) public isVaaConsumed;

    /// @notice Maximum gas limit for executor operations on destination chain
    /// @dev Used by Wormhole Executor framework to specify gas available for executeVAAv1 call.
    ///      Set via updateGasLimit(). Executor will provide this much gas when invoking the
    ///      destination contract's VAA processing function. Default: 1,000,000 gas.
    ///      Typical values: 1M for simple operations, 2M for complex compliance checks.
    uint128 public gasLimit;

    /// @notice Wei value to pass to executor on destination chain for contract calls
    /// @dev Used by Wormhole Executor framework to fund gas-intensive operations on destination.
    ///      Set via updateMsgValue(). Value is passed to executor's quoteExecution() and
    ///      requestExecution() to ensure destination contract has ETH for nested calls (e.g.,
    ///      registry updates, token mints). Typically 0 for simple operations.
    uint128 public msgValue;

    /**
     * @notice Maps a Wormhole chain ID to the emitter address expected in incoming VAAs.
     *
     * @dev Kept separate from `bridgeAddresses` because the two roles diverge for Solana:
     *
     *   bridgeAddresses[chainId]  — executor destination used when *sending* tokens to that
     *                               chain (e.g. the Solana program ID so the executor can call
     *                               receive_message).
     *
     *   emitterAddresses[chainId] — the Wormhole vm.emitterAddress we expect when *receiving*
     *                               a VAA *from* that chain.  For EVM peers this is the same
     *                               bytes32-padded contract address.  For Solana it is the
     *                               emitter PDA (find_program_address(["emitter"], programId))
     *                               because that is what the Wormhole guardian records as the
     *                               emitter, not the program ID itself.
     *
     * Populated by `setEmitterAddress`.  For convenience the setup tasks set both mappings
     * in a single call so operators never have to reason about the distinction.
     */
    mapping(uint16 wmChainId => bytes32 emitter) public emitterAddresses;

    /// @notice Tracks which Wormhole chain IDs use EVM-style 20-byte addresses.
    ///         Only chains registered as EVM can be used with bridgeDSTokens().
    mapping(uint16 wmChainId => bool isEVM) public evmChains;

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

    function initialize(
        address _wormholeCore,
        address _executorQuoterRouter,
        address _quoterAddr,
        address _dsToken
    ) public onlyProxy initializer {
        if (_wormholeCore == address(0) || _executorQuoterRouter == address(0) || _quoterAddr == address(0) || _dsToken == address(0)) {
            revert NonZeroAddress();
        }
        __BaseDSContract_init(_msgSender());
        __ReentrancyGuard_init();
        dsToken = IDSToken(_dsToken);
        dsServiceConsumer = IDSServiceConsumer(_dsToken);
        wormholeCore = IWormhole(_wormholeCore);
        executorQuoterRouter = IExecutorQuoterRouter(_executorQuoterRouter);
        quoterAddr = _quoterAddr;
        gasLimit = 1_000_000;
        msgValue = 0;
        consistencyLevel = 201; // default: safe
    }

    function setBridgeAddress(uint16 _chainId, bytes32 _bridgeAddress) external override onlyOwner {
        if (_bridgeAddress == bytes32(0)) revert NonZeroAddress();
        bridgeAddresses[_chainId] = _bridgeAddress;
        emit BridgeAddressAdded(_chainId, _bridgeAddress);
    }

    function removeBridgeAddress(uint16 _chainId) external override onlyOwner {
        delete bridgeAddresses[_chainId];
        emit BridgeAddressRemoved(_chainId);
    }

    function setEmitterAddress(uint16 _chainId, bytes32 _emitterAddress) external override onlyOwner {
        if (_emitterAddress == bytes32(0)) revert NonZeroAddress();
        emitterAddresses[_chainId] = _emitterAddress;
        emit EmitterAddressAdded(_chainId, _emitterAddress);
    }

    function removeEmitterAddress(uint16 _chainId) external override onlyOwner {
        delete emitterAddresses[_chainId];
        emit EmitterAddressRemoved(_chainId);
    }

    function setEVMChain(uint16 _chainId, bool _isEVM) external override onlyOwner {
        evmChains[_chainId] = _isEVM;
        emit EVMChainSet(_chainId, _isEVM);
    }

    function updateGasLimit(uint128 _gasLimit) external override onlyOwner {
        emit GasLimitUpdate(gasLimit, _gasLimit);
        gasLimit = _gasLimit;
    }

    function updateMsgValue(uint128 _msgValue) external override onlyOwner {
        emit MsgValueUpdate(msgValue, _msgValue);
        msgValue = _msgValue;
    }

    function updateConsistencyLevel(uint8 _consistencyLevel) external onlyOwner {
        emit ConsistencyLevelUpdate(consistencyLevel, _consistencyLevel);
        consistencyLevel = _consistencyLevel;
    }

    function setQuoterAddr(address _quoterAddr) external onlyOwner addressNotZero(_quoterAddr) {
        emit QuoterAddrUpdate(quoterAddr, _quoterAddr);
        quoterAddr = _quoterAddr;
    }

    function quoteBridge(uint16 _targetChain) public override view returns (uint256 cost) {
        (uint256 coreFee, uint256 execFee) = _quoteBridge(_targetChain);
        cost = execFee + coreFee;
    }

    /**
     * @notice Bridges DS tokens to the same address on the target chain
     * @dev Backwards compatibility wrapper that bridges tokens to msg.sender's address on destination chain.
     *      Converts msg.sender to bytes32 and delegates to bridgeDSTokensToAddress.
     * @param _targetChain Wormhole chain ID of the destination chain (e.g., 1 for Solana, 2 for Ethereum)
     * @param _value Amount of DS tokens to bridge (must not exceed unlocked balance)
     * @custom:requirements
     * - Contract must not be paused
     * - Caller must have sufficient unlocked token balance
     * - Caller must be a registered investor with valid KYC
     * - Target chain must have configured bridge address
     * - msg.value must cover Wormhole core fee + executor fee
     * @custom:compliance Validates investor compliance, lock periods, and transferable balance before burning tokens
     * @custom:fees Refunds excess ETH if msg.value exceeds required fees
     */
    function bridgeDSTokens(uint16 _targetChain, uint256 _value) external override payable whenNotPaused {
        // EVM-address encoding is only valid for EVM-compatible chains.
        // Non-EVM chains (e.g. Solana) require an explicit bytes32 destination via bridgeDSTokensToAddress().
        if (!evmChains[_targetChain]) revert NonEVMTargetChain();

        // Backwards compatibility: bridge to same address (msg.sender)
        // Convert msg.sender to bytes32
        bytes32 destinationAddress = bytes32(uint256(uint160(_msgSender())));
        bridgeDSTokensToAddress(_targetChain, _value, destinationAddress);
    }

    /**
     * @notice Bridges DS tokens to a specific address on the target chain
     * @dev Allows bridging tokens to a different wallet than msg.sender (e.g., EVM address or Solana pubkey).
     *      Validates destination wallet registration differently based on whether it matches source wallet.
     *      Delegates to _bridgeDSTokensInternal for compliance validation and cross-chain execution.
     * @param _targetChain Wormhole chain ID of the destination chain (1=Solana, 2=Ethereum, 6=Avalanche, etc.)
     * @param _value Amount of DS tokens to bridge in wei (must not exceed unlocked balance)
     * @param _destinationAddress Destination wallet as bytes32 (EVM: left-padded address, Solana: Ed25519 pubkey)
     * @custom:requirements
     * - Contract must not be paused
     * - _destinationAddress must not be zero
     * - Caller must have sufficient unlocked token balance
     * - Caller must be a registered investor with valid KYC
     * - Target chain must have configured bridge address and emitter address
     * - msg.value must cover Wormhole core fee + executor fee
     * @custom:compliance Validates investor compliance, lock periods, and transferable balance before burning tokens
     * @custom:destination-validation
     * - If destination == msg.sender: auto-registers destination wallet on target chain (backwards compatible)
     * - If destination != msg.sender: destination wallet MUST already be registered for same investor on target chain
     * @custom:fees Refunds excess ETH if msg.value exceeds required fees (core fee + execution fee)
     * @custom:cross-chain Publishes VAA via Wormhole Core and requests execution via ExecutorQuoterRouter
     * @custom:events Emits DSTokenBridgeSend with source wallet (msg.sender) and destination address (bytes32)
     */
    function bridgeDSTokensToAddress(uint16 _targetChain, uint256 _value, bytes32 _destinationAddress) public override payable whenNotPaused nonReentrant {
        if (_destinationAddress == bytes32(0)) revert NonZeroAddress();
        string memory investorId = _bridgeDSTokensInternal(_targetChain, _value, _destinationAddress);
        emit DSTokenBridgeSend(_targetChain, address(dsToken), _addressToBytes32(_msgSender()), _destinationAddress, investorId, _value);
    }

    /**
     * @notice Processes incoming cross-chain VAA messages and executes DS token issuance
     * @dev Verifies VAA authenticity, validates source authorization, and issues tokens with investor data
     *      Uses direct VAA verification instead of relying on Standard Relayer automatic processing
     * @param _encodedVM The encoded Wormhole VAA message containing cross-chain transfer data
     * @custom:executor-integration
     * This function is called by Executor providers after successful cross-chain delivery.
     * Unlike Standard Relayer, this contract handles VAA verification directly.
     * @custom:security-flow
     * 1. Parses and verifies VAA using Wormhole Core contract
     * 2. Validates source chain and bridge address authorization
     * 3. Implements replay protection using VAA hash
     * 4. Decodes investor data from VAA payload (includes source and destination wallets)
     * 5. Validates destination wallet authorization based on validation rules
     * 6. Updates investor registry with cross-chain attributes (conditional)
     * 7. Issues DS tokens to destination wallet on destination chain
     * @custom:replay-protection Uses hash-based replay protection via isVaaConsumed mapping
     * @custom:destination-validation
     * If sourceWallet == destinationWallet:
     * - Auto-register destination wallet if not already registered (backwards compatible)
     * If sourceWallet != destinationWallet:
     * - Destination wallet MUST already be registered for same investor
     * - Reverts if not registered or belongs to different investor
     */
    function executeVAAv1(bytes calldata _encodedVM) external payable whenNotPaused nonReentrant {
        IWormhole _wormholeCore = wormholeCore;
        (IWormhole.VM memory vm, bool valid, ) = _wormholeCore.parseAndVerifyVM(_encodedVM);
        if (!valid) revert InvalidWormholeMessage();

        uint16 sourceChain = vm.emitterChainId;

        // Verify the VAA originates from a known bridge peer.
        // Uses emitterAddresses (not bridgeAddresses) because for Solana the executor
        // destination (program ID) differs from the Wormhole emitter (emitter PDA).
        bytes32 expectedEmitter = emitterAddresses[sourceChain];
        if (expectedEmitter == bytes32(0)) revert EmitterAddressNotConfigured();
        if (vm.emitterAddress != expectedEmitter) revert WrongBridgeInitiator();

        // Parse the payload with new format: sourceWallet and destinationAddress (bytes32)
        (
            uint16 targetChain,
            string memory investorId,
            uint256 value,
            bytes32 sourceWallet,
            bytes32 destinationAddress,
            string memory country,
            uint256[] memory attributeValues,
            uint256[] memory attributeExpirations
        ) = abi.decode(vm.payload, (uint16, string, uint256, bytes32, bytes32, string, uint256[], uint256[]));

        // validate destination chain ID - Cross chain reply protection
        if (targetChain != _wormholeCore.chainId()) revert WrongDestinationChain();

        // replay protection by (chain, sequence)
        if (isVaaConsumed[vm.hash]) revert MessageAlreadyConsumed();
        isVaaConsumed[vm.hash] = true;

        // Convert bytes32 destination address to EVM address
        address destinationWallet = address(uint160(uint256(destinationAddress)));

        // Perform DSToken operation
        IDSServiceConsumer _dsServiceConsumer = dsServiceConsumer;
        IDSRegistryService registryService = IDSRegistryService(_dsServiceConsumer.getDSService(_dsServiceConsumer.REGISTRY_SERVICE()));

        // Validation logic based on whether destination equals source
        if (sourceWallet == destinationAddress) {
            // Same-address case: auto-register if not already registered (backwards compatible)
            address[] memory investorWallets = new address[](1);
            uint8[] memory attributeIds = new uint8[](4);
            attributeIds[0] = 1;  // KYC
            attributeIds[1] = 2;  // Accredited
            attributeIds[2] = 4;  // Qualified
            attributeIds[3] = 8;  // Professional
            investorWallets[0] = destinationWallet;
            registryService.updateInvestor(investorId, investorId, country, investorWallets, attributeIds, attributeValues, attributeExpirations);
        } else {
            // Different-address case: validate destination wallet is whitelisted for same investor
            // during updateInvestor and issueTokens operations, so we only check if wallet is registered
            bool isDestinationRegistered = registryService.isWallet(destinationWallet);

            if (!isDestinationRegistered) {
                // Destination wallet not registered at all - REVERT
                revert DestinationWalletNotWhitelisted();
            } else {
                // Destination wallet exists: it must belong to the investorId
                string memory investorIdFromDestinationWallet = registryService.getInvestor(destinationWallet);
                if (keccak256(bytes(investorId)) != keccak256(bytes(investorIdFromDestinationWallet))) {
                    revert WalletBelongsToADifferentInvestor();
                }
            }
        }

        IDSToken _dsToken = dsToken;
        _dsToken.issueTokens(destinationWallet, value);

        emit DSTokenBridgeReceive(sourceChain, address(_dsToken), sourceWallet, destinationAddress, investorId, value);
    }


    function withdrawETH(address payable _to) external nonReentrant addressNotZero(_to) onlyOwner {
        uint256 amount = address(this).balance;

        (bool sent, ) = _to.call{value: amount}("");
        if (!sent) revert ETHTransferError();
        emit ETHWithdrawn(_to, amount);
    }

    /////// private/internal methods ////////

    /**
     * @notice Internal function to bridge DS tokens with bytes32 destination address
     * @dev Handles both EVM and Solana destinations using unified bytes32 address format
     * @param _targetChain Wormhole chain ID for destination
     * @param _value Amount of tokens to bridge
     * @param _destinationAddress Destination address as bytes32 (EVM address or Solana pubkey)
     * @return investorId The investor ID for event emission
     */
    function _bridgeDSTokensInternal(uint16 _targetChain, uint256 _value, bytes32 _destinationAddress) private returns (string memory investorId) {
        IWormhole _wormholeCore = wormholeCore;
        uint16 _whChainId = _wormholeCore.chainId();
        if (_targetChain == _whChainId) revert CannotBridgeToSameChain();
        if (_value == 0) revert InvalidBridgeAmount();

        IDSToken _dsToken = dsToken;
        if (_dsToken.balanceOf(_msgSender()) < _value) revert InsufficientTokenBalance();
        bytes32 targetBridgeAddress = bridgeAddresses[_targetChain];
        if (targetBridgeAddress == bytes32(0)) revert BridgeAddressNotConfigured();

        IDSServiceConsumer _dsServiceConsumer = dsServiceConsumer;
        IDSRegistryService registryService = IDSRegistryService(_dsServiceConsumer.getDSService(_dsServiceConsumer.REGISTRY_SERVICE()));
        if (!registryService.isWallet(_msgSender())) revert InvestorNotRegistered();

        investorId = registryService.getInvestor(_msgSender());
        _validateLockedTokens(investorId, _value, registryService, _dsServiceConsumer);

        // Full investor detail is only needed when source == destination (updateInvestor on destination).
        // For different-wallet bridges the destination wallet is already registered; only investorId
        // is required to verify ownership, so we skip the expensive getInvestorDetailsFull call.
        bool isSameWallet = _addressToBytes32(_msgSender()) == _destinationAddress;
        InvestorDetail memory investorDetail;
        if (isSameWallet) {
            investorDetail = _getInvestorData(investorId, registryService);
        }

        // --- publish VAA via Core ---
        uint256 coreFee = _wormholeCore.messageFee();

        bytes memory payload = _encodePayload(_targetChain, _value, _addressToBytes32(_msgSender()), _destinationAddress, isSameWallet, investorId, investorDetail);

        uint64 sequence = _wormholeCore.publishMessage{value: coreFee}(
            0,
            payload,
            consistencyLevel
        );

        bytes memory request = ExecutorMessages.makeVAAv1Request(_whChainId, _addressToBytes32(address(this)), sequence);
        bytes memory relayInstructions = RelayInstructions.encodeGas(gasLimit, msgValue);

        IExecutorQuoterRouter _executorQuoterRouter = executorQuoterRouter;
        address _quoterAddr = quoterAddr;
        uint256 execFee = _executorQuoterRouter.quoteExecution(
            _targetChain,
            targetBridgeAddress,
            _msgSender(),
            _quoterAddr,
            request,
            relayInstructions
        );

        if (msg.value < coreFee + execFee) revert InsufficientETHForFees();

        // Perform DSToken burn on source chain (after fee validation)
        _dsToken.burn(_msgSender(), _value, BRIDGE_REASON);

        // --- request execution ---
        _executorQuoterRouter.requestExecution{value: execFee}(
            _targetChain,
            targetBridgeAddress,
            _msgSender(),
            _quoterAddr,
            request,
            relayInstructions
        );

        // refund of extra ETH
        uint256 extra = msg.value - coreFee - execFee;
        if (extra > 0) {
            (bool ok,) = payable(_msgSender()).call{value: extra}("");
            if (!ok) revert RefundFailed();
        }
    }

    /**
     * @notice Encodes the Wormhole VAA payload for a bridge operation.
     * @dev When source and destination wallets match, the full investor detail (country, attributes)
     *      is included so the destination chain can call updateInvestor.
     *      When they differ, the destination wallet is already registered; only investorId is
     *      included for ownership verification — country and attributes are omitted.
     */
    function _encodePayload(
        uint16 _targetChain,
        uint256 _value,
        bytes32 _sourceWallet,
        bytes32 _destinationAddress,
        bool _isSameWallet,
        string memory _investorId,
        InvestorDetail memory _investorDetail
    ) private pure returns (bytes memory) {
        if (_isSameWallet) {
            return abi.encode(
                _targetChain,
                _investorDetail.investorId,
                _value,
                _sourceWallet,
                _destinationAddress,
                _investorDetail.country,
                _investorDetail.attributeValues,
                _investorDetail.attributeExpirations
            );
        }
        return abi.encode(
            _targetChain,
            _investorId,
            _value,
            _sourceWallet,
            _destinationAddress,
            "",
            new uint256[](0),
            new uint256[](0)
        );
    }

    function _getInvestorData(string memory _investorId, IDSRegistryService _registryService) private view returns (InvestorDetail memory) {
        (string memory country, uint256[] memory attributeValues, uint256[] memory attributeExpirations, , , , ) = _registryService.getInvestorDetailsFull(_investorId);

        InvestorDetail memory detail = InvestorDetail({
            investorId: _investorId,
            country: country,
            attributeValues: attributeValues,
            attributeExpirations: attributeExpirations
        });

        return detail;
    }

    /**
     * @notice Validates investor compliance and token lock-up requirements before bridging
     * @dev Integrates with DS Compliance services to enforce transferable balance limits
     *      Prevents bridging of locked tokens based on investor region and lock periods
     * @param _investorId The unique identifier for the investor
     * @param _value The amount of tokens to validate for transfer
     * @param _registryService The DS Registry service for investor data lookup
     * @param _dsServiceConsumer The DS Service consumer for accessing compliance services
     * @custom:compliance-checks
     * - Validates investor country and regional compliance requirements
     * - Enforces US vs Non-US lock period differences
     * - Checks transferable token balance against requested bridge amount
     * - Reverts if insufficient unlocked balance available
     * @custom:lock-periods
     * - US investors: Subject to US-specific lock period rules
     * - Non-US investors: Subject to international lock period rules
     * - Lock periods configured via DS Compliance Configuration service
     */
    function _validateLockedTokens(string memory _investorId, uint256 _value, IDSRegistryService _registryService, IDSServiceConsumer _dsServiceConsumer) private view {
        IDSComplianceService complianceService = IDSComplianceService(_dsServiceConsumer.getDSService(_dsServiceConsumer.COMPLIANCE_SERVICE()));
        IDSComplianceConfigurationService complianceConfigurationService = IDSComplianceConfigurationService(_dsServiceConsumer.getDSService(_dsServiceConsumer.COMPLIANCE_CONFIGURATION_SERVICE()));

        string memory country = _registryService.getCountry(_investorId);
        uint256 region = complianceConfigurationService.getCountryCompliance(country);

        // lock/hold up validation
        uint256 lockPeriod = (region == US) ? complianceConfigurationService.getUSLockPeriod() : complianceConfigurationService.getNonUSLockPeriod();
        uint256 availableBalanceForTransfer = complianceService.getComplianceTransferableTokens(_msgSender(), block.timestamp, uint64(lockPeriod));
        if (availableBalanceForTransfer < _value) revert InsufficientUnlockedBalance();
    }

    /**
     * @notice Converts an Ethereum address to bytes32 format
     * @dev Pads the 20-byte address to 32 bytes by converting it first to uint160, then uint256, and finally to bytes32
     * @param _addr The Ethereum address to convert
     * @return The bytes32 representation of the address
     */
    function _addressToBytes32(address _addr) private pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }

    /**
     * @notice Private function to get bridge operation costs and parameters
     * @dev This function is used internally to calculate fees and generate bridge request data
     * @param _targetChain The destination chain ID for the bridge operation
     * @return coreFee The fee required for the core wormhole message
     * @return execFee The fee required for execution on the target chain
     */
    function _quoteBridge(uint16 _targetChain) private view returns (uint256 coreFee, uint256 execFee) {
        bytes32 targetBridgeAddress = bridgeAddresses[_targetChain];
        if (targetBridgeAddress == bytes32(0)) revert BridgeAddressNotConfigured();

        IWormhole _wormholeCore = wormholeCore; // cache storage
        uint64 sequence = _wormholeCore.nextSequence(address(this));

        coreFee = _wormholeCore.messageFee();
        bytes memory request = ExecutorMessages.makeVAAv1Request(_wormholeCore.chainId(), _addressToBytes32(address(this)), sequence);
        bytes memory relayInstructions = RelayInstructions.encodeGas(gasLimit, msgValue);
        execFee = executorQuoterRouter.quoteExecution(
            _targetChain,
            targetBridgeAddress,
            _msgSender(),
            quoterAddr,
            request,
            relayInstructions
        );
    }
}
