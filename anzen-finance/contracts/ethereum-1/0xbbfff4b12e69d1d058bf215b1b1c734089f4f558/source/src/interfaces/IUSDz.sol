// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IUSDz {
    struct EnforcedOptionParam {
        uint32 eid;
        uint16 msgType;
        bytes options;
    }

    struct InboundPacket {
        Origin origin;
        uint32 dstEid;
        address receiver;
        bytes32 guid;
        uint256 value;
        address executor;
        bytes message;
        bytes extraData;
    }

    struct MessagingFee {
        uint256 nativeFee;
        uint256 lzTokenFee;
    }

    struct MessagingReceipt {
        bytes32 guid;
        uint64 nonce;
        MessagingFee fee;
    }

    struct OFTFeeDetail {
        int256 feeAmountLD;
        string description;
    }

    struct OFTLimit {
        uint256 minAmountLD;
        uint256 maxAmountLD;
    }

    struct OFTReceipt {
        uint256 amountSentLD;
        uint256 amountReceivedLD;
    }

    struct Origin {
        uint32 srcEid;
        bytes32 sender;
        uint64 nonce;
    }

    struct SendParam {
        uint32 dstEid;
        bytes32 to;
        uint256 amountLD;
        uint256 minAmountLD;
        bytes extraOptions;
        bytes composeMsg;
        bytes oftCmd;
    }

    error AccessControlBadConfirmation();
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);
    error AddressEmptyCode(address target);
    error AddressInsufficientBalance(address account);
    error ECDSAInvalidSignature();
    error ECDSAInvalidSignatureLength(uint256 length);
    error ECDSAInvalidSignatureS(bytes32 s);
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);
    error ERC20InvalidApprover(address approver);
    error ERC20InvalidReceiver(address receiver);
    error ERC20InvalidSender(address sender);
    error ERC20InvalidSpender(address spender);
    error ERC2612ExpiredSignature(uint256 deadline);
    error ERC2612InvalidSigner(address signer, address owner);
    error EnforcedPause();
    error ExpectedPause();
    error FailedInnerCall();
    error InvalidAccountNonce(address account, uint256 currentNonce);
    error InvalidDelegate();
    error InvalidEndpointCall();
    error InvalidLocalDecimals();
    error InvalidOptions(bytes options);
    error InvalidShortString();
    error LzTokenUnavailable();
    error NoPeer(uint32 eid);
    error NotEnoughNative(uint256 msgValue);
    error OnlyEndpoint(address addr);
    error OnlyPeer(uint32 eid, bytes32 sender);
    error OnlySelf();
    error OwnableInvalidOwner(address owner);
    error OwnableUnauthorizedAccount(address account);
    error SafeERC20FailedOperation(address token);
    error SimulationResult(bytes result);
    error SlippageExceeded(uint256 amountLD, uint256 minAmountLD);
    error StringTooLong(string str);

    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed user, uint256 indexed amount);
    event Deposit(address indexed user, uint256 indexed amount);
    event EIP712DomainChanged();
    event EnforcedOptionSet(EnforcedOptionParam[] _enforcedOptions);
    event Mint(address indexed user, uint256 indexed amount);
    event MintFeeRateChanged(uint256 indexed newFeeRate);
    event ModeSwitch(bool mode);
    event MsgInspectorSet(address inspector);
    event OFTReceived(bytes32 indexed guid, uint32 srcEid, address indexed toAddress, uint256 amountReceivedLD);
    event OFTSent(
        bytes32 indexed guid, uint32 dstEid, address indexed fromAddress, uint256 amountSentLD, uint256 amountReceivedLD
    );
    event OracleChanged(address newOracle);
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event Paused(address account);
    event PeerSet(uint32 eid, bytes32 peer);
    event PreCrimeSet(address preCrimeAddress);
    event Redeem(address indexed user, uint256 indexed amount);
    event RedeemFeeRateChanged(uint256 indexed newFeeRate);
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event TreasuryChanged(address indexed newTreasury);
    event Unpaused(address account);

    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function FEE_COEFFICIENT() external view returns (uint256);
    function POOL_MANAGER_ROLE() external view returns (bytes32);
    function SEND() external view returns (uint16);
    function SEND_AND_CALL() external view returns (uint16);
    function acceptOwnership() external;
    function addBatchToBlacklist(address[] memory _users) external;
    function addToBlacklist(address _user) external;
    function allowInitializePath(Origin memory origin) external view returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approvalRequired() external pure returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function collateralRate() external view returns (uint256);
    function combineOptions(uint32 _eid, uint16 _msgType, bytes memory _extraOptions)
        external
        view
        returns (bytes memory);
    function composeMsgSender() external view returns (address sender);
    function decimalConversionRate() external view returns (uint256);
    function decimals() external view returns (uint8);
    function deposit(uint256 _amount) external;
    function depositBySPCT(uint256 _amount) external;
    function eip712Domain()
        external
        view
        returns (
            bytes1 fields,
            string memory name,
            string memory version,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        );
    function endpoint() external view returns (address);
    function enforcedOptions(uint32 eid, uint16 msgType) external view returns (bytes memory enforcedOption);
    function getRoleAdmin(bytes32 role) external view returns (bytes32);
    function grantRole(bytes32 role, address account) external;
    function hasRole(bytes32 role, address account) external view returns (bool);
    function isBlacklist(address _user) external view returns (bool);
    function isPeer(uint32 _eid, bytes32 _peer) external view returns (bool);
    function lzReceive(
        Origin memory _origin,
        bytes32 _guid,
        bytes memory _message,
        address _executor,
        bytes memory _extraData
    ) external payable;
    function lzReceiveAndRevert(InboundPacket[] memory _packets) external payable;
    function lzReceiveSimulate(
        Origin memory _origin,
        bytes32 _guid,
        bytes memory _message,
        address _executor,
        bytes memory _extraData
    ) external payable;
    function maxMintFeeRate() external view returns (uint256);
    function maxRedeemFeeRate() external view returns (uint256);
    function mintFeeRate() external view returns (uint256);
    function mode() external view returns (bool);
    function msgInspector() external view returns (address);
    function name() external view returns (string memory);
    function nextNonce(uint32, bytes32) external view returns (uint64 nonce);
    function nonces(address owner) external view returns (uint256);
    function oApp() external view returns (address);
    function oAppVersion() external pure returns (uint64 senderVersion, uint64 receiverVersion);
    function oftVersion() external pure returns (bytes4 interfaceId, uint64 version);
    function oracle() external view returns (address);
    function owner() external view returns (address);
    function pause() external;
    function paused() external view returns (bool);
    function peers(uint32 eid) external view returns (bytes32 peer);
    function pendingOwner() external view returns (address);
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external;
    function preCrime() external view returns (address);
    function quoteOFT(SendParam memory _sendParam)
        external
        view
        returns (OFTLimit memory oftLimit, OFTFeeDetail[] memory oftFeeDetails, OFTReceipt memory oftReceipt);
    function quoteSend(SendParam memory _sendParam, bool _payInLzToken)
        external
        view
        returns (MessagingFee memory msgFee);
    function redeem(uint256 _amount) external;
    function redeemBackSPCT(uint256 _amount) external;
    function redeemFeeRate() external view returns (uint256);
    function removeBatchFromBlacklist(address[] memory _users) external;
    function removeFromBlacklist(address _user) external;
    function renounceOwnership() external;
    function renounceRole(bytes32 role, address callerConfirmation) external;
    function rescueERC20(address token, address to, uint256 amount) external;
    function revokeRole(bytes32 role, address account) external;
    function send(SendParam memory _sendParam, MessagingFee memory _fee, address _refundAddress)
        external
        payable
        returns (MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt);
    function setDelegate(address _delegate) external;
    function setEnforcedOptions(EnforcedOptionParam[] memory _enforcedOptions) external;
    function setMintFeeRate(uint256 newMintFeeRate) external;
    function setMsgInspector(address _msgInspector) external;
    function setOracle(address newOracle) external;
    function setPeer(uint32 _eid, bytes32 _peer) external;
    function setPreCrime(address _preCrime) external;
    function setRedeemFeeRate(uint256 newRedeemFeeRate) external;
    function setTreasury(address newTreasury) external;
    function sharedDecimals() external pure returns (uint8);
    function spct() external view returns (address);
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function switchMode() external;
    function symbol() external view returns (string memory);
    function token() external view returns (address);
    function totalPooledSPCT() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function transferOwnership(address newOwner) external;
    function treasury() external view returns (address);
    function unpause() external;
    function usdc() external view returns (address);
}
