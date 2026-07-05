// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.20;

import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";
import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";
import {AccessManagedUpgradeable} from "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";

import {ICampaignManager} from "./ICampaignManager.sol";

contract CampaignManager is ICampaignManager, AccessManagedUpgradeable {
    using SafeERC20 for IERC20;

    // *** State ***

    address private _oracle;
    address private _previousVersion;
    Campaign[] private _campaigns;
    mapping(address => mapping(address => mapping(address => uint256)))
        private _userClaims; // user => token => reward_token => claimed_amount
    mapping(address => mapping(address => bytes32)) private _merkleRoots; // token => reward_token

    // *** Structs ***

    struct Campaign {
        address token;
        uint256 startTimestamp;
        uint256 endTimestamp;
        address rewardToken;
        uint256 rewardAmount;
        Options options;
        address owner;
        uint256 stoppedTimestamp; // 0 if not force stopped
    }

    // *** Events ***

    event CampaignCreated(
        uint256 id,
        address token,
        uint256 start,
        uint256 end,
        address rewardToken,
        uint256 rewardAmount,
        Options options,
        address owner
    );
    event CampaignStopped(uint256 id, uint256 stoppedTimestamp);
    event MerkleRootsUpdated(
        address[] tokens,
        address[] rewardTokens,
        bytes32[] roots
    );
    event Claimed(
        address account,
        address token,
        address rewardToken,
        uint256 amount
    );
    event OracleUpdated(address oldOracle, address newOracle);

    // *** Errors ***

    error CampaignDoesNotExist();
    error CampaignNotRunning();
    error ParamLengthMismatch();
    error NotOwner();
    error InvalidProof();
    error InvalidAmount();
    error InvalidOptions();
    error NotOracle();
    error InvalidOracle();

    constructor() {
        _disableInitializers(); // using this so that the deployed logic contract later cannot be initialized.
    }

    function initialize(
        address _initialAuthority,
        address _initialOracle,
        address _previousCampaignManager
    ) external initializer {
        __AccessManaged_init(_initialAuthority);
        _oracle = _initialOracle;
        _previousVersion = _previousCampaignManager;
    }

    function create(
        address token,
        uint256 start,
        uint256 end,
        address rewardToken,
        uint256 rewardAmount,
        Options calldata options
    ) external returns (uint256) {
        if (msg.sender != _oracle) {
            // only oracle is allowed to create campaigns with no pre-defined reward amount or custom endpoint
            if (rewardAmount == 0) {
                revert InvalidAmount();
            } else if (options.indexMode != 0) {
                revert InvalidOptions();
            }
        }
        _campaigns.push(
            Campaign(
                token,
                start,
                end,
                rewardToken,
                rewardAmount,
                options,
                msg.sender,
                0
            )
        );
        if (rewardAmount > 0) {
            // pre-fund the campaign
            IERC20(rewardToken).safeTransferFrom(
                msg.sender,
                address(this),
                rewardAmount
            );
        }
        uint256 id = _campaigns.length - 1;
        emit CampaignCreated(
            id,
            token,
            start,
            end,
            rewardToken,
            rewardAmount,
            options,
            msg.sender
        );
        return id;
    }

    function stop(uint256 id) public {
        if (id >= campaignsCount()) {
            revert CampaignDoesNotExist();
        }
        Campaign storage campaign = _campaigns[id];
        if (campaign.owner != msg.sender) {
            revert NotOwner();
        }
        uint256 stoppedTimestamp = block.timestamp;
        if (
            campaign.stoppedTimestamp > 0 ||
            campaign.endTimestamp <= stoppedTimestamp
        ) {
            revert CampaignNotRunning();
        }
        campaign.stoppedTimestamp = stoppedTimestamp;
        if (campaign.rewardAmount > 0) {
            uint256 refundAmount = ((campaign.endTimestamp - stoppedTimestamp) *
                campaign.rewardAmount) /
                (campaign.endTimestamp - campaign.startTimestamp);
            // refund remaining campaign amount
            IERC20(campaign.rewardToken).safeTransfer(msg.sender, refundAmount);
        }
        emit CampaignStopped(id, stoppedTimestamp);
    }

    function updateMerkleRoots(
        address[] calldata tokens,
        address[] calldata rewardTokens,
        bytes32[] calldata merkleRoots
    ) public {
        if (_oracle != msg.sender) {
            revert NotOracle();
        }
        if (
            tokens.length != merkleRoots.length ||
            rewardTokens.length != merkleRoots.length
        ) {
            revert ParamLengthMismatch();
        }
        // uint256 i; is cheaper than uint256 i = 0;
        for (uint256 i; i < tokens.length; ) {
            _merkleRoots[tokens[i]][rewardTokens[i]] = merkleRoots[i];
            unchecked {
                ++i;
            }
        }
        emit MerkleRootsUpdated(tokens, rewardTokens, merkleRoots);
    }

    function claim(
        address token,
        address rewardToken,
        uint256 earnedAmount,
        uint256 claimAmount,
        bytes32[] calldata merkleProof
    ) public {
        bytes32 node = keccak256(abi.encodePacked(msg.sender, earnedAmount));
        bytes32 root = merkleRoot(token, rewardToken);
        if (!MerkleProof.verify(merkleProof, root, node)) {
            revert InvalidProof();
        }
        uint256 newClaimedAmount = userClaims(msg.sender, token, rewardToken) +
            claimAmount;
        if (newClaimedAmount > earnedAmount) {
            revert InvalidAmount();
        }
        _userClaims[msg.sender][token][rewardToken] = newClaimedAmount;
        IERC20(rewardToken).transfer(msg.sender, claimAmount);
        emit Claimed(msg.sender, token, rewardToken, claimAmount);
    }

    function batchClaim(
        address[] calldata tokens,
        address[] calldata rewardTokens,
        uint256[] calldata earnedAmounts,
        uint256[] calldata  claimAmounts,
        bytes32[][] calldata merkleProof
    ) external {
        if (
            tokens.length != rewardTokens.length ||
            tokens.length != earnedAmounts.length ||
            tokens.length != claimAmounts.length ||
            tokens.length != merkleProof.length
        ) {
            revert ParamLengthMismatch();
        }
        for (uint256 i = 0; i < tokens.length; i++) {
            claim(
                tokens[i],
                rewardTokens[i],
                earnedAmounts[i],
                claimAmounts[i],
                merkleProof[i]
            );
        }
    }

    function get(uint256 id) external view returns (Campaign memory) {
        return _campaigns[id];
    }

    function campaignsCount() public view returns (uint256) {
        return _campaigns.length;
    }

    function oracle() external view returns (address) {
        return _oracle;
    }

    function userClaims(
        address user,
        address token,
        address rewardToken
    ) public view returns (uint256) {
        uint256 userClaim = _userClaims[user][token][rewardToken];
        // if the internal state of the user claim is different than 0, it has already been overridden, hence no need to get the previous version
        if (userClaim == 0 && _previousVersion != address(0)) {
            userClaim = ICampaignManager(_previousVersion).userClaims(
                user,
                token,
                rewardToken
            );
        }
        return userClaim;
    }

    function merkleRoot(
        address token,
        address rewardToken
    ) public view returns (bytes32) {
        return _merkleRoots[token][rewardToken];
    }

    function transferOracle(address newOracle) external {
        if (msg.sender != _oracle) {
            revert NotOracle();
        }
        if (newOracle == address(0) || newOracle == _oracle) {
            revert InvalidOracle();
        }
        address oldOracle = _oracle;
        _oracle = newOracle;
        emit OracleUpdated(oldOracle, newOracle);
    }
}
