// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "@symbiosis-finance/core-contracts/synth-core/bridge/BridgeV2.sol";
import "@symbiosis-finance/core-contracts/synth-core/Synthesis.sol";
import "@symbiosis-finance/core-contracts/synth-core/SyntFabric.sol";
import "@symbiosis-finance/core-contracts/synth-core/SyntERC20.sol";

contract SymBtc is OwnableUpgradeable {
    /// ** TYPES **
    type BtcInputIndex is uint32;

    /// ** STRUCTS **

    struct FromBTCTransactionTail {
        address receiveSide;
        bytes receiveSideCalldata;
        uint256 receiveSideOffset;
    }

    /// ** FIELDS **

    Synthesis public synthesis;
    BridgeV2 public bridge;
    address public btcTokenAddress; // address mock for token from btc
    uint256 public btcChainId; // chainId mock for BTC network

    function initialize(
        address _bridgeAddress,
        address _synthesisAddress,
        address _tokenAddress,
        uint256 _chainId
    ) public virtual initializer {
        __Ownable_init(msg.sender);

        bridge = BridgeV2(_bridgeAddress);
        synthesis = Synthesis(_synthesisAddress);
        btcTokenAddress = _tokenAddress;
        btcChainId = _chainId;
    }

    function getSyntToken() external view returns (SyntERC20) {
        address _sToken = ISyntFabric(synthesis.fabric()).getSyntRepresentation(
            btcTokenAddress,
            btcChainId
        );
        return SyntERC20(_sToken);
    }

    function getBtcTotalSupply() external view returns (uint256) {
        return this.getSyntToken().totalSupply();
    }

    function getHashBTC(
        bytes32 _btcTxId,
        BtcInputIndex _inputIndex,
        BtcSerial _wrapSerial,
        uint256 _stableBridgingFee,
        uint256 _amount,
        address _to,
        FromBTCTransactionTail memory _transactionTail) external view returns (bytes32) {
        return bridge.getRequestHash(this.getBTCCalldata(
            _btcTxId,
            _inputIndex,
            _wrapSerial,
            _stableBridgingFee,
            _amount,
            _to,
            _transactionTail
        ), address(synthesis));
    }

    function mpc() external view returns (address) {
        return bridge.mpc();
    }

    function unpackBTCTransactionTail(bytes memory _transactionTail) public pure returns (FromBTCTransactionTail memory) {
        return abi.decode(_transactionTail, (FromBTCTransactionTail));
    }

    function packBTCTransactionTail(FromBTCTransactionTail memory _transactionTail) public pure returns (bytes memory) {
        return abi.encode(_transactionTail);
    }

    function getBTCInternalID(
        bytes32 _btcTxId,
        BtcInputIndex _inputIndex
    ) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(_btcTxId, _inputIndex));
    }

    function getBTCExternalID(
        bytes32 _btcTxId,
        BtcInputIndex _inputIndex,
        address _receiveSide
    ) external view returns (bytes32) {
        return keccak256(abi.encodePacked(this.getBTCInternalID(_btcTxId, _inputIndex), _receiveSide, btcChainId));
    }

    function getBTCCalldata(
        bytes32 _btcTxId, // reveal tx id
        BtcInputIndex _inputIndex, // input index in the reveal tx
        BtcSerial _wrapSerial,
        uint256 _stableBridgingFee, // fee passed by reveal tx
        uint256 _amount, // input size
        address _to, // receiver address
        FromBTCTransactionTail memory _tail
    ) external view returns (bytes memory) {
        MetaRouteStructs.MetaMintTransactionBTC
        memory _metaMintTransactionBTC = MetaRouteStructs.MetaMintTransactionBTC(
            _stableBridgingFee,
            _amount,
            _wrapSerial,
            this.getBTCInternalID(_btcTxId, _inputIndex),
            this.getBTCExternalID(_btcTxId, _inputIndex, address(synthesis)),
            btcTokenAddress,
            btcChainId,
            _to,
            _tail.receiveSide,
            _tail.receiveSideCalldata,
            _tail.receiveSideOffset
        );

        return abi.encodeCall(Synthesis.metaMintSyntheticTokenBTC, (_metaMintTransactionBTC));
    }
}
