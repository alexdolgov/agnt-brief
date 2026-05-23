// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "./AtlendisVestingWallet.sol";
import "../token/AtlendisToken.sol";

/**
 * @title VestingWalletFactory
 * @notice Used to deploy and configure new vesting wallets with specific parameters
 **/
contract VestingWalletFactory {
    ////////////
    // EVENTS //
    ////////////

    event VestingWalletCreated(
        bytes32 id,
        address contractAddress,
        address beneficiary,
        AtlendisToken token,
        uint256 amount,
        uint256 start,
        uint64 duration,
        uint64 cliff
    );

    /////////////
    // STORAGE //
    /////////////

    AtlendisToken public immutable token;
    mapping(bytes32 => address) private wallets;

    /////////////////
    // CONSTRUCTOR //
    /////////////////

    constructor(AtlendisToken _token) {
        token = _token;
    }

    //////////
    // VIEW //
    //////////

    function getWallet(bytes32 id) public view returns (address) {
        return wallets[id];
    }

    ////////////////
    // DEPLOYMENT //
    ////////////////

    /**
     * @notice Deploys a new vesting wallet
     * Allows wallet to make transfers in all conditions for release function to work
     * Mints new tokens to be distributed by the wallet
     **/
    function deployNewVestingWallet(
        bytes32 id,
        address beneficiary,
        uint256 amount,
        uint64 startTime,
        uint64 totalDurationSeconds,
        uint64 cliffDurationSeconds
    ) external {
        // deployer must be a token governance address
        require(
            token.hasRole(token.DEFAULT_ADMIN_ROLE(), msg.sender),
            "Caller is not an admin of the token contract"
        );
        require(
            wallets[id] == address(0),
            "Wallet with target id already exists"
        );

        // deploy new vesting wallet with vesting starting either at chosen timestamp or block timestamp
        address deployedVestingWallet = address(
            new AtlendisVestingWallet(
                beneficiary,
                startTime,
                totalDurationSeconds,
                cliffDurationSeconds
            )
        );

        // register wallet
        wallets[id] = deployedVestingWallet;

        // mint new tokens to vesting wallet
        token.mint(deployedVestingWallet, amount);

        // allow vesting wallet to transfer tokens otherwise release would fail
        token.grantRole(
            token.PRIVILEDGED_TRANSFER_ROLE(),
            deployedVestingWallet
        );

        emit VestingWalletCreated(
            id,
            deployedVestingWallet,
            beneficiary,
            token,
            amount,
            startTime,
            totalDurationSeconds,
            cliffDurationSeconds
        );
    }
}
