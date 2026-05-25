// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {IOPNControllerDAO} from "./interfaces/IOPNControllerDAO.sol";
import {IOPNToken} from "./interfaces/IOPNToken.sol";
import {Owned} from "@solmate/src/auth/Owned.sol";
import {IERC20} from "erc20/interfaces/IERC20.sol";

/// @title OPNControllerDAO
/// @author The OPN Ecosystem Team
contract OPNControllerDAO is IOPNControllerDAO, Owned {
    IOPNToken public immutable opnToken;

    // GET is the token that is being migrated to OPN
    IERC20 public constant GET_MIGRATION_TOKEN =
        IERC20(0x8a854288a5976036A725879164Ca3e91d30c6A1B);

    // OPN is migrated at a rate of 1000:1 from GET - so OPN supply is bound by the max supply of GET * 1000
    uint256 public maxSupplyOPN;

    // control over minting can be disabled by DAO permanently in this contract
    bool public mintingDisabled = false;

    constructor(
        address _initialAdmin,
        address _opnTokenAddress
    ) Owned(_initialAdmin) {
        opnToken = IOPNToken(_opnTokenAddress);
        // the max supply of OPN is 1000 times the total supply of GET (as OPN is migrated at a rate of 1000:1 from GET)
        maxSupplyOPN = GET_MIGRATION_TOKEN.totalSupply() * 1000;
    }

    // Modifiers

    modifier onlyDAOController() {
        require(
            msg.sender == owner,
            "OPNMintManagerDAO: UNAUTHORIZED ONLY DAO OWNER"
        );
        _;
    }

    // Operational functions

    // @inheritdoc IOPNControllerDAO
    function mintTokensByDAO(
        address _to,
        uint256 _amount
    ) external override onlyDAOController {
        require(
            !mintingDisabled,
            "OPNControllerDAO: MINTING PERMANENTLY DISABLED"
        );
        // check if the max supply of OPN is reached, cannot mint more tokens than the max supply
        require(
            opnToken.totalSupply() + _amount <= maxSupplyOPN,
            "OPNControllerDAO: MAX SUPPLY REACHED"
        );
        opnToken.mintTokensByDAO(_to, _amount);
        emit MintTokensByDAO(_to, _amount);
    }

    // @inheritdoc IOPNControllerDAO
    function lowerMaxMintableSupplyOPN(
        uint256 _newMaxSupply
    ) external override onlyDAOController {
        // OPN max supply can only be lowered by DAO not increased
        require(
            _newMaxSupply < maxSupplyOPN,
            "OPNControllerDAO: NEW MAX SUPPLY MUST BE LOWER THAN CURRENT MAX SUPPLY"
        );
        maxSupplyOPN = _newMaxSupply;
        emit MaxSupplyOPNChanged(maxSupplyOPN);
    }

    // @inheritdoc IOPNControllerDAO
    function finalizeMigration() external override onlyDAOController {
        opnToken.finalizeMigration();
        emit MigrationFinalized();
    }

    // @inheritdoc IOPNControllerDAO
    function disableMintingPermanently() external override onlyDAOController {
        mintingDisabled = true;
        emit MintingDisabled();
    }

    // @inheritdoc IOPNControllerDAO
    function revokeOPNMintingCompletelyMintMaxSupply()
        external
        override
        onlyDAOController
    {
        address tokenReceiver_ = owner;
        uint256 totalSupplyOPN_ = opnToken.totalSupply();
        uint256 remainingOPN_ = maxSupplyOPN - totalSupplyOPN_;
        opnToken.mintTokensByDAO(tokenReceiver_, remainingOPN_);
        opnToken.finalizeMigration();
        opnToken.setDAOControllerAddress(address(0x0));
        mintingDisabled = true;
        emit MintingDisabled();
    }

    // @inheritdoc IOPNControllerDAO
    function revokeOPNMintingCompletelyNoMint()
        external
        override
        onlyDAOController
    {
        opnToken.finalizeMigration();
        opnToken.setDAOControllerAddress(address(0x0));
        mintingDisabled = true;
        emit MintingDisabled();
    }

    // @inheritdoc IOPNControllerDAO
    function revokeDAOController() external override onlyDAOController {
        opnToken.setDAOControllerAddress(address(0x0));
        emit DAOControllerRevoked();
    }
}
