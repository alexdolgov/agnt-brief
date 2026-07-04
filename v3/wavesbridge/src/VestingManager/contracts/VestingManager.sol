// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IVestingManager.sol";

contract VestingManager is IVestingManager, AccessControlEnumerable {

    using SafeERC20 for IERC20;

    event DurationSet(uint256 duration_);
    event StartSet(uint256 start_);
    event NFTSet(address NFT_);
    event DAOSet(address DAO_);
    event CliffAdded(uint256 timstamp, uint256 share);
    event CliffRemoved(uint256 timstamp, uint256 share);
    event Withdrawn(address token, uint256 amount, address to);

    struct Cliff {
        uint256 timestamp;
        uint256 share;
    }

    uint256 public constant PERCENTAGE_DENOM = 100000;
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant VERIFIER_ROLE = keccak256("VERIFIER_ROLE");

    uint64 public start;
    uint64 public duration;
    Cliff[] public cliffs;

    address public immutable token;
    address public immutable walletFactory;
    bool public allowMultipleReleases = true;
    address public NFT;
    address public DAO;
    mapping(address => address[]) public beneficiaryWallets;
    
    modifier beforeStart() {
        require(start > block.timestamp, "VestingManager: vesting started");
        _;
    }

    /**
     * @param token_ The distributed token;
     * @param walletFactory_ The wallet factory contract;
     */
    constructor(address token_, address walletFactory_) {
        require(token_ != address(0), "VestingManager: zero address");
        require(walletFactory_ != address(0), "VestingManager: zero address");
        token = token_;
        walletFactory = walletFactory_;
        start = type(uint64).max;
        duration = type(uint64).max;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev Returns sum of all cliffs to given timestamp.
     *
     * @param timestamp The cliff timestamp.
     */
    function cliff(uint256 timestamp) public view virtual returns (uint256 totalShares)  {
        for (uint256 i; i < cliffs.length; ++i) {
            if (cliffs[i].timestamp <= timestamp) {
                totalShares += cliffs[i].share;
            }
        }
    }

    /**
     * @dev Returns cliffs count.
     */
    function cliffsCount() public view returns (uint256 count) {
        count = cliffs.length;
    }

    /**
     * @dev Set start time.
     *
     * @param start_ The start time (unix timestamp).
     */
    function setStart(uint64 start_) external override virtual onlyRole(OPERATOR_ROLE) beforeStart {
        start = start_;
        emit StartSet(start_);
    }

    /**
     * @dev Set vesting duration.
     *
     * @param duration_ The duration in sec.
     */
    function setDuration(uint64 duration_) external override virtual onlyRole(OPERATOR_ROLE) beforeStart {
        duration = duration_;
        emit DurationSet(duration_);
    }

    /**
     * @dev Adds cliff.
     *
     * @param timestamp The cliff timestamp;
     * @param share The percentage, with 4 decimals (100% is 100000).
     */
    function addCliff(uint256 timestamp, uint256 share) external override virtual onlyRole(OPERATOR_ROLE) beforeStart {
        uint256 totalShares;
        for (uint256 i; i < cliffs.length; ++i) {
            totalShares += cliffs[i].share;
        }
        require(totalShares + share <= 100000, "VestingManager: wrong share");
        cliffs.push(Cliff(timestamp, share));
        emit CliffAdded(timestamp, share);
    }

    /**
     * @dev Removes cliff.
     *
     * @param cliffId The cliff index which should be removed.
     */
    function removeCliff(uint256 cliffId) external override virtual onlyRole(OPERATOR_ROLE) beforeStart {
        require(cliffId < cliffs.length, "VestingManager: wrong cliff index");
        uint256 timestamp = cliffs[cliffId].timestamp;
        uint256 share = cliffs[cliffId].share;
        cliffs[cliffId] = cliffs[cliffs.length - 1];
        cliffs.pop();
        emit CliffRemoved(timestamp, share);
    }

    /**
     * @dev Set NFT.
     *
     * @param NFT_ The EYWA NFT address.
     */
    function setNFT(address NFT_) external override virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        require(NFT_ != address(0), "VestingManager: zero address");
        NFT = NFT_;
        emit NFTSet(NFT_);
    }

    /**
     * @dev Set DAO.
     *
     * @param DAO_ The DAO escrow contract.
     */
    function setDAO(address DAO_) external override virtual onlyRole(DEFAULT_ADMIN_ROLE) {
        require(DAO_ != address(0), "VestingManager: zero address");
        DAO = DAO_;
        emit DAOSet(DAO_);
    }

    function getBeneficiaryWallets(address beneficiary) external view returns(address[] memory) {
        return beneficiaryWallets[beneficiary];
    }

    function attachWallet(address currentBeneficiary, address newBeneficiary_) external {
        require(IWalletFactory(walletFactory).isValidWallet(msg.sender), "VestingManager: wrong wallet");
        require(_findWalletIndex(newBeneficiary_, msg.sender) == type(uint256).max, "VestingManager: wallet already attached");
        
        if (currentBeneficiary != address(0)) {
            _detachWallet(currentBeneficiary, msg.sender);
        }
        beneficiaryWallets[newBeneficiary_].push(msg.sender);
    }

    /**
     * @dev Withdraws distributed token from the contract's account to the owner.
     */
    function withdraw() external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            start == type(uint64).max && duration == type(uint64).max || (start + duration) < block.timestamp,
            "VestingManager: vesting not finished"
        );
        IERC20 tokenImpl = IERC20(token);
        uint256 amount = tokenImpl.balanceOf(address(this));
        tokenImpl.safeTransfer(msg.sender, amount);
        emit Withdrawn(token, amount, msg.sender);
    }

    function _detachWallet(address beneficiary_, address wallet) private {
        require(beneficiary_ != address(0), "VestingManager: zero beneficiary_");
        uint256 walletsCount = beneficiaryWallets[beneficiary_].length;
        uint256 index = _findWalletIndex(beneficiary_, wallet);
        if (index == type(uint256).max) {
            revert("VestingManager: wallet not attached");
        }
        beneficiaryWallets[beneficiary_][index] = beneficiaryWallets[beneficiary_][walletsCount - 1];
        beneficiaryWallets[beneficiary_].pop();
    }

    function _findWalletIndex(address beneficiary_, address wallet) private view returns(uint256) {
        address[] memory _pinnedWallets =  beneficiaryWallets[beneficiary_];
        uint256 walletsCount = beneficiaryWallets[beneficiary_].length;
        for (uint256 i; i < walletsCount; ++i) {
            if (_pinnedWallets[i] == wallet) {
                return i;
            }
        }
        return type(uint256).max;
    }
}