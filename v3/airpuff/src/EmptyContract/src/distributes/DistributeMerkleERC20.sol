// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {MerkleProof} from "openzeppelin/utils/cryptography/MerkleProof.sol";
import {IERC20, SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlEnumerableUpgradeable} from "openzeppelin-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";

import {IDistributeMerkle} from "../interfaces/IDistributeMerkle.sol";
import {ProtocolEvents} from "../interfaces/ProtocolEvents.sol";
import {IPauser} from "../interfaces/IPauser.sol";

/**
 * Ref: https://github.com/Uniswap/merkle-distributor
 */
contract DistributeMerkleERC20Upgradeable is IDistributeMerkle, ProtocolEvents, AccessControlEnumerableUpgradeable, ReentrancyGuardUpgradeable {
    // errors
    error InvalidInitialize();
    error AlreadyClaimed();
    error InvalidProof();
    error TokenInvalid();
    error LengthDiffer();
    error RoleNotSet();
    error Paused();
    error RepeatSetElement();
    error ClaimWindowFinished();

    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableMap for EnumerableMap.UintToUintMap;

    // -------------- UPGRADE -------------- //
    /// @custom:storage-location erc7201:storage.DistributeMerkleERC20
    struct DistributeMerkleERC20Storage {
        // KEY is the uid aligned with backend
        // token whitelist, prevent approval any call
        mapping(uint256 => address) allowedTokens;
        // id -> claimedBitMap
        mapping(uint256 => EnumerableMap.UintToUintMap) claimedBitMaps;
        // merkle roots, listed by tokenId
        mapping(uint256 => bytes32) merkleRoots;
        // sponsor addresses, seperated by id
        mapping(uint256 => address) sponsors;
        // endTimes, seperated by id
        mapping(uint256 => uint256) endTimes;
        // The contract for indicating if staking is paused.
        IPauser pauser;
    }

    // keccak256(abi.encode(uint256(keccak256("storage.DistributeMerkleERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant DistributeMerkleERC20Location = 0x04beb0f60e05bab44248ac3130cd839fa4b3606854f1b876dce8b890b5c02600;

    function _getDistributeMerkleERC20Storage() internal pure returns (DistributeMerkleERC20Storage storage $) {
        assembly {
            $.slot := DistributeMerkleERC20Location
        }
    }

    /**
     * @dev Sets the sender as the initial owner, the beneficiary as the pending owner, the start timestamp and the
     * vesting duration of the vesting wallet.
     */
    function __DistributeMerkleERC20_init(address _pauser, uint256[] memory uids, address[] memory tokens, bytes32[] memory roots, address[] memory sponsors, uint256[] memory endTimes) internal onlyInitializing {
        __AccessControlEnumerable_init();
        __ReentrancyGuard_init();
        __DistributeMerkleERC20_init_unchained(_pauser, uids, tokens, roots, sponsors, endTimes);
    }

    function __DistributeMerkleERC20_init_unchained(address _pauser, uint256[] memory uids, address[] memory tokens, bytes32[] memory roots, address[] memory sponsors, uint256[] memory endTimes) internal onlyInitializing {
        _setPauser(_pauser);
        _setElements(uids, tokens, roots, sponsors, endTimes);
    }

    /**
     * @dev The contract should not able to receive Native Token.
     */
    receive() external payable virtual {revert("Not Allowed") ;}
    fallback() external payable virtual {revert("Not Allowed") ;}

    // modifier
    modifier onlyAllowedToken(uint256 id) {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        if ($.allowedTokens[id] == address(0)) revert TokenInvalid();
        _;
    }

    // -------------- LOGIC -------------- //
    /// @notice Role as the manager role in RewardTranche
    /// allows for the add / remove of Tranches.
    bytes32 public constant DISTRIBUTOR_MANAGER_ROLE = keccak256("DISTRIBUTOR_MANAGER_ROLE");

    /// @notice Configuration for contract initialization.
    struct Init {
        address admin;
        address manager;
        uint256[] uids;
        address[] tokens;
        bytes32[] merkleRoots;
        address[] sponsors;
        uint256[] endTimes;
        address pauser;
    }

    /// @notice initialize the contract.
    /// @dev MUST be called during the contract upgrade to set up the proxies state.
    function initialize(Init memory init) virtual external initializer {
        __AccessControlEnumerable_init();
        __DistributeMerkleERC20_init(init.pauser, init.uids, init.tokens, init.merkleRoots, init.sponsors, init.endTimes);

        // set admin roles
        _setRoleAdmin(DISTRIBUTOR_MANAGER_ROLE, DEFAULT_ADMIN_ROLE);

        // grant roles
        if (init.admin == address(0) || init.manager == address(0)) {
            revert RoleNotSet();
        }
        _grantRole(DEFAULT_ADMIN_ROLE, init.admin);
        _grantRole(DISTRIBUTOR_MANAGER_ROLE, init.manager);
    }

    function pauser() public view returns (address) {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        return address($.pauser);
    }

    function isClaimed(uint256 id, uint256 index) public view override returns (bool) {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        (, uint256 claimedWord) = $.claimedBitMaps[id].tryGet(claimedWordIndex);
        uint256 mask = (1 << claimedBitIndex);
        return claimedWord & mask == mask;
    }

    function _setClaimed(uint256 id, uint256 index) private {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        uint256 claimedWordIndex = index / 256;
        uint256 claimedBitIndex = index % 256;
        $.claimedBitMaps[id].set(claimedWordIndex, $.claimedBitMaps[id].get(claimedWordIndex) | (1 << claimedBitIndex));
    }

    function claim(uint256 id, uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof)
    public
    virtual
    override
    nonReentrant
    onlyAllowedToken(id)
    {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        if (isClaimed(id, index)) revert AlreadyClaimed();
        if ($.pauser.isClaimPaused()) {
            revert Paused();
        }

        // Verify the merkle proof.
        if ($.endTimes[id] != 0 && block.timestamp > $.endTimes[id]) revert ClaimWindowFinished();
        bytes32 node = keccak256(abi.encodePacked(id, index, account, amount));
        if (!MerkleProof.verify(merkleProof, $.merkleRoots[id], node)) revert InvalidProof();

        // Mark it claimed and send the token.
        _setClaimed(id, index);
        IERC20($.allowedTokens[id]).safeTransferFrom($.sponsors[id], account, amount);

        emit Claimed($.allowedTokens[id], index, account, amount);
    }

    function getElement(uint256 uid) external view returns (address, bytes32, address, uint256) {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        return ($.allowedTokens[uid], $.merkleRoots[uid], $.sponsors[uid], $.endTimes[uid]);
    }

    function setTokensAndMerkleRoots(uint256[] memory uids, address[] memory tokens, bytes32[] memory roots, address[] memory sponsors, uint256[] memory endTimes)
    public
    onlyRole(DISTRIBUTOR_MANAGER_ROLE)
    {
        return _setElements(uids, tokens, roots, sponsors, endTimes);
    }

    function _setElements(uint256[] memory uids, address[] memory tokens, bytes32[] memory roots, address[] memory sponsors, uint256[] memory endTimes) internal {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();

        if (uids.length != tokens.length || tokens.length != roots.length || roots.length != sponsors.length || sponsors.length != endTimes.length) {
            revert LengthDiffer();
        }
        for (uint256 i; i < tokens.length; i++) {
            $.merkleRoots[uids[i]] = roots[i];
            $.sponsors[uids[i]] = sponsors[i];
            $.endTimes[uids[i]] = endTimes[i];
            $.allowedTokens[uids[i]] = tokens[i];
            emit ProtocolConfigChanged(
                bytes4(keccak256("setElements(uint256,address,bytes32,address,uint256)")),
                "setElements(uint256,address,bytes32,address,uint256)",
                abi.encode(uids[i],tokens[i],roots[i],sponsors[i],endTimes[i])
            );
        }
    }

    function _setPauser(address _pauser) internal {
        DistributeMerkleERC20Storage storage $ = _getDistributeMerkleERC20Storage();
        if (_pauser == address(0)) {
            revert InvalidInitialize();
        }
        $.pauser = IPauser(_pauser);
        emit ProtocolConfigChanged(bytes4(keccak256("_setPauser(address)")), "_setPauser(address)", abi.encode(_pauser));
    }
}