// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

import "openzeppelin-upgradeable4/security/ReentrancyGuardUpgradeable.sol";
import "openzeppelin-upgradeable4/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/IWhitelist.sol";
import "./interfaces/IPrivatePresaleV3MerkleTree.sol";
import "./libraries/UQ112x112.sol";

/// @title Private Presale contract v2 contract with Merkle tree integration
contract PrivatePresaleV3MerkleTree is
    IPrivatePresaleV3MerkleTree,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    ERC165
{
    using SafeERC20 for IERC20;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant PRIVATE_PRESALE_BUYER = keccak256("PRIVATE_PRESALE_BUYER");

    address public registry;
    address public staking;
    address public token;
    address public whitelist;

    uint public totalBought;
    uint public distributedAmount;
    uint public startTimestamp;
    uint public endTimestamp;
    uint public minAllocationInBuyToken;
    uint public maxAllocationInBuyToken;
    uint public minStakingPower;
    uint public priceTokenPerBuyTokenInUQ;

    mapping(address => uint) public buyTokenAmountOf;
    address private _projectFundsHolder;

    string linkToCSV;
    bytes32 root;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    /// @notice Initialize contract
    /// @param _initializeParams Params for initialization
    function initialize(InitializeParams calldata _initializeParams) external initializer {
        require(
            _initializeParams.staking != address(0) &&
                _initializeParams.token != address(0) &&
                _initializeParams.projectFundsHolder != address(0) &&
                _initializeParams.distributedAmount != 0 &&
                _initializeParams.startTimestamp != 0 &&
                _initializeParams.endTimestamp != 0 &&
                _initializeParams.minAllocationInBuyToken > 0 &&
                _initializeParams.maxAllocationInBuyToken > _initializeParams.minAllocationInBuyToken &&
                _initializeParams.minStakingPower > 0,
            "PrivatePresaleV2MerkleTree: ZERO"
        );
        require(
            IERC165(_initializeParams.registry).supportsInterface(type(IAccessControl).interfaceId) &&
                IERC165(_initializeParams.whitelist).supportsInterface(type(IWhitelist).interfaceId),
            "PrivatePresaleV2MerkleTree: ADDRESS_NOT_SUPPORTED"
        );
        require(
            _initializeParams.endTimestamp > _initializeParams.startTimestamp,
            "PrivatePresaleV2MerkleTree: INVALID_TIME"
        );

        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        registry = _initializeParams.registry;
        staking = _initializeParams.staking;
        token = _initializeParams.token;
        _projectFundsHolder = _initializeParams.projectFundsHolder;
        whitelist = _initializeParams.whitelist;
        distributedAmount = _initializeParams.distributedAmount;
        startTimestamp = _initializeParams.startTimestamp;
        endTimestamp = _initializeParams.endTimestamp;
        minAllocationInBuyToken = _initializeParams.minAllocationInBuyToken;
        maxAllocationInBuyToken = _initializeParams.maxAllocationInBuyToken;
        minStakingPower = _initializeParams.minStakingPower;
        priceTokenPerBuyTokenInUQ = _initializeParams.priceTokenPerBuyTokenInUQ;
        linkToCSV = _initializeParams.linkToCSV;
        root = _initializeParams.root;
    }

    /// @notice Buy tokens
    /// @param _buyParams Buy params
    function buy(BuyParams calldata _buyParams)
        external
        nonReentrant
        requireKYC(_buyParams.signatures, _buyParams.signers)
        updateStakingPower(_buyParams.idsToUpdate)
    {
        require(block.timestamp >= startTimestamp, "PrivatePresaleV2MerkleTree: TOO_EARLY");
        require(block.timestamp < endTimestamp, "PrivatePresaleV2MerkleTree: TOO_LATE");
        require(_buyParams.amountInBuyToken > 0, "PrivatePresaleV2MerkleTree: ZERO");

        uint newAmountOf = buyTokenAmountOf[msg.sender] + _buyParams.amountInBuyToken;
        uint _totalBought = totalBought + _buyParams.amountInBuyToken;
        require(
            newAmountOf >= minAllocationInBuyToken &&
                newAmountOf <= maxAllocationInBuyToken &&
                _totalBought <= distributedAmount,
            "PrivatePresaleV2MerkleTree: INVALID_AMOUNT"
        );

        bool isProofValid = isMerkleProofValid(_buyParams.proof, keccak256(abi.encodePacked(msg.sender)));
        if (!isProofValid && !IAccessControl(registry).hasRole(PRIVATE_PRESALE_BUYER, msg.sender)) {
            IStaking.InfoAccountDetails memory stakingDetails = IStaking(staking).info(msg.sender);
            require(
                stakingDetails.accountDetails.totalStakingPower >= minStakingPower,
                "PrivatePresaleV2MerkleTree: INVALID_STAKING_POWER"
            );
        }

        IERC20(token).safeTransferFrom(msg.sender, _projectFundsHolder, _buyParams.amountInBuyToken);
        buyTokenAmountOf[msg.sender] += _buyParams.amountInBuyToken;
        totalBought = _totalBought;

        emit Buy(msg.sender, _buyParams.amountInBuyToken);
    }

    /// @notice Set price function
    /// @param _priceTokenPerBuyTokenInUQ price of token in UQ
    function setPriceTokenPerBuyTokenInUQ(uint _priceTokenPerBuyTokenInUQ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_priceTokenPerBuyTokenInUQ != 0, "PrivatePresaleV2MerkleTree: ZERO");
        priceTokenPerBuyTokenInUQ = _priceTokenPerBuyTokenInUQ;
    }

    /// @notice Set end time
    /// @param _endTimestamp timestamp end
    function setEndTimestamp(uint _endTimestamp) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_endTimestamp > startTimestamp, "PrivatePresaleV2MerkleTree: INVALID_TIME");
        endTimestamp = _endTimestamp;
    }

    /// @notice Set merkle tree info
    /// @param _linkToCSV link to csv with users
    /// @param _root merkle tree's root
    function setMerkleTree(string calldata _linkToCSV, bytes32 _root) external onlyRole(DEFAULT_ADMIN_ROLE) {
        linkToCSV = _linkToCSV;
        root = _root;
    }

    /// @notice Presale info
    /// @param _account User's account
    /// @return _details Info
    function info(address _account) external view returns (InfoDetails memory _details) {
        (uint32 stakingPowerInitialBreak, ) = IStaking(staking).stakingPowerData();
        _details = InfoDetails({
            token: token,
            distributedAmount: distributedAmount,
            startTimestamp: startTimestamp,
            endTimestamp: endTimestamp,
            totalBought: totalBought,
            amountOfAccountInToken: _amountOf(_account),
            minAllocationInBuyToken: minAllocationInBuyToken,
            maxAllocationInBuyToken: maxAllocationInBuyToken,
            minStakingPower: minStakingPower,
            priceTokenPerBuyTokenInUQ: priceTokenPerBuyTokenInUQ,
            stakingPowerInitialBreak: stakingPowerInitialBreak,
            linkToCSV: linkToCSV
        });
    }

    /// @notice User's amount of tokens
    /// @param _account address of user
    /// @return amount of tokens on user balance
    function amountOf(address _account) external view returns (uint) {
        return _amountOf(_account);
    }

    /// @notice Check if contract supports provided interface
    /// @param interfaceId interface code
    /// @return boolean response
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId || interfaceId == type(IPrivatePresaleV3MerkleTree).interfaceId;
    }

    function isMerkleProofValid(bytes32[] calldata _proof, bytes32 _leaf) public view override returns (bool) {
        return MerkleProof.verify(_proof, root, _leaf);
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "PrivatePresaleV2MerkleTree: FORBIDDEN");
        _;
    }

    modifier requireKYC(bytes[] calldata _signatures, address[] calldata _signers) {
        bytes memory data = abi.encode(msg.sender, address(this));
        require(
            IWhitelist(whitelist).isAddressWhitelisted(data, _signatures, _signers),
            "PrivatePresaleV2MerkleTree: USER_SHOULD_PASS_KYC"
        );
        _;
    }

    modifier updateStakingPower(uint[] calldata _idsToUpdate) {
        if (_idsToUpdate.length > 0) {
            IStaking(staking).updateStakingPower(msg.sender, _idsToUpdate);
        }
        _;
    }

    function _authorizeUpgrade(address _logic) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function _amountOf(address _account) private view returns (uint) {
        return (buyTokenAmountOf[_account] * priceTokenPerBuyTokenInUQ) / UQ112x112.Q112;
    }
}
