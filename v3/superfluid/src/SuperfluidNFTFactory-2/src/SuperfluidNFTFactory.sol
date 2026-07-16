// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

/* OpenZeppelin Contracts */
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { ERC1967Utils } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";

/* Local Imports */
import { SuperfluidNFT } from "src/SuperfluidNFT.sol";
import { ISuperfluidNFTFactory } from "src/interfaces/ISuperfluidNFTFactory.sol";

/**
 * @title SuperfluidNFTFactory
 * @author Superfluid Technical Team
 * @notice A factory contract for deploying Superfluid NFTs
 */
contract SuperfluidNFTFactory is ISuperfluidNFTFactory, OwnableUpgradeable {

    //     _____ __        __
    //    / ___// /_____ _/ /____  _____
    //    \__ \/ __/ __ `/ __/ _ \/ ___/
    //   ___/ / /_/ /_/ / /_/  __(__  )
    //  /____/\__/\__,_/\__/\___/____/

    /// @notice The signer address
    address public signer;

    /// @notice The treasury address
    address public treasury;

    /// @notice The implementation address of the Superfluid NFT contract
    address public superfluidNFTImpl;

    /// @notice Mapping from symbol to deployed NFT contract address
    mapping(string symbol => address nftContract) public symbolToNFT;

    //     ______                 __                  __
    //    / ____/___  ____  _____/ /________  _______/ /_____  _____
    //   / /   / __ \/ __ \/ ___/ __/ ___/ / / / ___/ __/ __ \/ ___/
    //  / /___/ /_/ / / / (__  ) /_/ /  / /_/ / /__/ /_/ /_/ / /
    //  \____/\____/_/ /_/____/\__/_/   \__,_/\___/\__/\____/_/

    /**
     * @notice Contract constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Contract initializer
     * @param _owner The owner of the contract
     * @param _superfluidNFTImpl The implementation address of the Superfluid NFT contract
     * @param _signer The signer address
     * @param _treasury The treasury address
     */
    function initialize(address _owner, address _superfluidNFTImpl, address _signer, address _treasury)
        external
        initializer
    {
        __Ownable_init(_owner);
        superfluidNFTImpl = _superfluidNFTImpl;
        signer = _signer;
        treasury = _treasury;
    }

    //      ______     __                        __   ______                 __  _
    //     / ____/  __/ /____  _________  ____ _/ /  / ____/_  ______  _____/ /_(_)___  ____  _____
    //    / __/ | |/_/ __/ _ \/ ___/ __ \/ __ `/ /  / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
    //   / /____>  </ /_/  __/ /  / / / / /_/ / /  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
    //  /_____/_/|_|\__/\___/_/  /_/ /_/\__,_/_/  /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

    /// @inheritdoc ISuperfluidNFTFactory
    function deploySuperfluidNFT(
        string memory name,
        string memory symbol,
        uint256 mintStartDate,
        uint256 mintEndDate,
        uint256 mintPrice,
        uint256 maxTokensPerUser
    ) external onlyOwner returns (address newCollection) {
        // Check if symbol is already taken
        if (symbolToNFT[symbol] != address(0)) revert SYMBOL_ALREADY_EXISTS();

        newCollection = Clones.clone(superfluidNFTImpl);

        // Initialize NFT contract (owner is set to factory owner for admin control)
        SuperfluidNFT(newCollection).initialize(
            owner(), name, symbol, mintStartDate, mintEndDate, mintPrice, maxTokensPerUser, signer, treasury
        );

        // Store the symbol to NFT mapping
        symbolToNFT[symbol] = newCollection;

        emit SuperfluidNFTDeployed(newCollection);
    }

    /// @inheritdoc ISuperfluidNFTFactory
    function setSuperfluidNFTImpl(address _superfluidNFTImpl) external onlyOwner {
        if (_superfluidNFTImpl == address(0)) revert INVALID_PARAMETER();
        superfluidNFTImpl = _superfluidNFTImpl;
    }

    /// @inheritdoc ISuperfluidNFTFactory
    function setSigner(address _signer) external onlyOwner {
        if (_signer == address(0)) revert INVALID_PARAMETER();
        signer = _signer;
    }

    /// @inheritdoc ISuperfluidNFTFactory
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert INVALID_PARAMETER();
        treasury = _treasury;
    }

    /// @inheritdoc ISuperfluidNFTFactory
    function upgradeTo(address newImplementation, bytes calldata data) external onlyOwner {
        ERC1967Utils.upgradeToAndCall(newImplementation, data);
    }

}
