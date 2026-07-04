// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

library Constants {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONTRACTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// BeraPaw
    address constant BERAPAW_FORGE = 0xFeedb9750d6ac77D2E52e0C9EB8fB79F9de5Cafe;
    address constant LBGT = 0xBaadCC2962417C01Af99fb2B7C75706B9bd6Babe;
    address constant STAKED_LBGT = 0xFace73a169e2CA2934036C8Af9f464b5De9eF0ca;
    address constant PAW = address(0);
    address constant STAKED_PAW = address(0);
    address constant PBERA = 0xDeadf18CB9233770FE8874c78D7483b4A126B34a;
    address constant BERAPAW_STAKER = 0x4b1d14c4fEA305c4144b51ee64141567A0F0B00B;
    address constant PBERA_CLAIMER = 0x37eB4A1aBF8d41005A1321B383Fa8b172efeA5D3;

    /// Berachain
    address constant REWARD_VAULT_FACTORY = 0x94Ad6Ac84f6C6FbA8b8CCbD71d9f4f101def52a8;
    address constant BGT = 0x656b95E550C07a9ffe548bd4085c72418Ceb1dba;
    address constant BGT_STAKER = 0x44F07Ce5AfeCbCC406e6beFD40cc2998eEb8c7C6;
    address constant BERACHAIN_GOVERNANCE = 0x4f4A5c2194B8e856b7a05B348F6ba3978FB6f6D5;
    address constant BEACON_DEPOSIT = 0x4242424242424242424242424242424242424242;
    address constant SWBERA = 0x118D2cEeE9785eaf70C15Cd74CD84c9f8c3EeC9a;

    address constant WBERA = 0x6969696969696969696969696969696969696969;
    address constant HONEY = 0xFCBD14DC51f0A4d49d5E53C2E0950e0bC26d0Dce;

    /// PawPal
    address constant PAWPAL_ARB = 0xb40ba1951b9B3bE813F5a4ceafed29eB08D5358d;
    address constant PAWPAL_ARB_MINTER = 0x6CaB173725d369393CC7198A7c6c77a280705061; // pk is in the bots .env

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           ROLES                            */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    bytes32 constant ROLE_GOD = keccak256("ROLE_GOD");
    bytes32 constant ROLE_ADMIN = keccak256("ROLE_ADMIN");
    bytes32 constant ROLE_CURATOR = keccak256("ROLE_CURATOR");

    // BeraPaw Forge
    bytes32 constant ROLE_BOOSTER = keccak256("ROLE_BOOSTER");
    bytes32 constant ROLE_REWARD_COLLECTOR = keccak256("ROLE_REWARD_COLLECTOR");
    bytes32 constant ROLE_REDEMPTIONS_PROCESSOR = keccak256("ROLE_REDEMPTIONS_PROCESSOR");
    bytes32 constant ROLE_BRIBE_BACK_SETTER = keccak256("ROLE_BRIBE_BACK_SETTER");
    bytes32 constant ROLE_REDEEM = keccak256("ROLE_REDEEM");

    // LBGT
    bytes32 constant ROLE_MINTER = keccak256("ROLE_MINTER");
    bytes32 constant ROLE_BURNER = keccak256("ROLE_BURNER");
    bytes32 constant ROLE_FLASH_MINTER = keccak256("ROLE_FLASH_MINTER");

    // stLBGT
    bytes32 constant ROLE_COMPOUNDER = keccak256("ROLE_COMPOUNDER");

    // POL Controller
    bytes32 constant ROLE_REGISTER = keccak256("ROLE_REGISTER");

    // BeraPawStaker
    bytes32 constant ROLE_STAKER = keccak256("ROLE_STAKER");
    bytes32 constant ROLE_SWBERA_STAKER = keccak256("ROLE_SWBERA_STAKER");

    // ValidatorOperator
    bytes32 constant ROLE_CHEF = keccak256("ROLE_CHEF");

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        DEPLOYERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // Contract Deployers that have the desired contract address at zero nonce.
    address constant INITIAL_GOD = 0x8362fAAb2711f757b8F52eCB746f6b6a69622B8F;
    address constant BERAPAW_FORGE_DEPLOYER = 0xDb1ebdAc30988078c135d05a7ad206e0b2263CD3;
    address constant LBGT_DEPLOYER = 0x5173ed2B85f72e27E9Df92FB78Ea016EB16E11f5;
    address constant STAKED_LBGT_DEPLOYER = 0xF2B75030Fb562502625aE3F12F9Ef667AE51dd14;
    address constant GENERAL_DEPLOYER = 0x8362fAAb2711f757b8F52eCB746f6b6a69622B8F;
    address constant TREASURY = 0xe105B981bC871c6591a666424FF2368097836469; // DEV MULTISIG
    address constant PBERA_DEPLOYER = 0x322D1A54F79d3939B9d684C710CcBFDE9cdA255d;
    address constant BERAPAW_STAKER_DEPLOYER = 0x8F54D5eCfb7Fc723240BDf2c2B26bd2725923a6d;
}
