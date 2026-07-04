// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "./VestingWallet.sol";
import "./interfaces/IVestingManager.sol";
import "./interfaces/IWalletFactory.sol";
import "../contracts/interfaces/IVestingManager.sol";


contract ManagedVestingWallet is VestingWallet {

    ///@dev vesting manager which manage start\duration\cliffs for this wallet
    address public vestingManager;
    ///@dev factory
    address internal immutable _factory;

    modifier onlyFactory {
        require(_factory == msg.sender, "VestingWallet: only factory");
        _;
    }

    modifier onlyBeneficiary {
        require(beneficiary() == msg.sender, "VestingWallet: only beneficiary");
        _;
    }

    modifier onlyDAO {
        IVestingManager impl = IVestingManager(vestingManager);
        require(impl.DAO() == msg.sender, "VestingWallet: only DAO");
        _;
    }

    constructor() {
        _factory = msg.sender;
    }

    function initialize(address beneficiary_, address vestingManager_) public virtual onlyFactory returns (bool) {
        require(vestingManager == address(0), "VestingWallet: already initied");
        require(vestingManager_ != address(0), "VestingWallet: zero address");
        vestingManager = vestingManager_;
        _setBeneficiary(beneficiary_);
        return true;
    }

    function start() public view virtual override returns (uint256) {
        return IVestingManager(vestingManager).start();
    }

    function duration() public view virtual override returns (uint256) {
        return IVestingManager(vestingManager).duration();
    }

    function cliff(uint64 timestamp) public view returns (uint256) {
        return IVestingManager(vestingManager).cliff(timestamp);
    }

    /**
     * @dev Release the tokens that have already vested.
     *
     * @param token The token which should be released (EYWA).
     */
    function release(address token) public virtual override onlyBeneficiary {
        super.release(token);
    }

    /**
     * @dev Virtual implementation of the vesting formula. This returns the amount vested, as a function of time, for
     * an asset given its total historical allocation.
     *
     * Cliffs added.
     *
     * @param totalAllocation The allocation which should be distributed;
     * @param timestamp The distribution timestamp.
     */
    function _vestingSchedule(uint256 totalAllocation, uint64 timestamp) internal view virtual override returns (uint256) {
        if (timestamp < start()) {
            return _cliff(totalAllocation, timestamp);
        } else if (timestamp > start() + duration()) {
            return totalAllocation;
        } else {
            uint256 availableAllocation = _cliff(totalAllocation, timestamp);
            return availableAllocation + (((totalAllocation - availableAllocation) * (timestamp - start())) / duration());
        }
    }

    /**
     * @dev Returns total cliff to given timestamp.
     *
     * @param totalAllocation The allocation which should be distributed;
     * @param timestamp The distribution timestamp.
     * @return cliff in amount of distributed tokens.
     */
    function _cliff(uint256 totalAllocation, uint64 timestamp) internal view returns (uint256) {
        IVestingManager vestingManagerImpl = IVestingManager(vestingManager);
        return (totalAllocation * vestingManagerImpl.cliff(timestamp)) / vestingManagerImpl.PERCENTAGE_DENOM();
    }

    function _setBeneficiary(address newBeneficiary_) internal override {
        address currentBeneficiary = beneficiary();
        super._setBeneficiary(newBeneficiary_);
        IVestingManager(vestingManager).attachWallet(currentBeneficiary, newBeneficiary_);
    }
}
