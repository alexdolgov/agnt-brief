// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

/**
 * @title ISuperfluidNFTFactory
 * @author Superfluid Technical Team
 * @notice An interface for the SuperfluidNFTFactory contract
 */
interface ISuperfluidNFTFactory {

    //      ______                 __
    //     / ____/   _____  ____  / /______
    //    / __/ | | / / _ \/ __ \/ __/ ___/
    //   / /___ | |/ /  __/ / / / /_(__  )
    //  /_____/ |___/\___/_/ /_/\__/____/

    /// @notice The event emitted when a Superfluid NFT contract is deployed
    event SuperfluidNFTDeployed(address indexed newCollection);

    //     ______           __                     ______
    //    / ____/_  _______/ /_____  ____ ___     / ____/_____________  __________
    //   / /   / / / / ___/ __/ __ \/ __ `__ \   / __/ / ___/ ___/ __ \/ ___/ ___/
    //  / /___/ /_/ (__  ) /_/ /_/ / / / / / /  / /___/ /  / /  / /_/ / /  (__  )
    //  \____/\__,_/____/\__/\____/_/ /_/ /_/  /_____/_/  /_/   \____/_/  /____/

    /// @notice The error emitted when the parameter is invalid
    error INVALID_PARAMETER();

    /// @notice The error emitted when the symbol is already taken
    error SYMBOL_ALREADY_EXISTS();

    //      ______     __                        __   ______                 __  _
    //     / ____/  __/ /____  _________  ____ _/ /  / ____/_  ______  _____/ /_(_)___  ____  _____
    //    / __/ | |/_/ __/ _ \/ ___/ __ \/ __ `/ /  / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
    //   / /____>  </ /_/  __/ /  / / / / /_/ / /  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
    //  /_____/_/|_|\__/\___/_/  /_/ /_/\__,_/_/  /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

    /**
     * @notice Deploys a new Superfluid NFT contract
     * @dev Only callable by the owner
     * @param name The name of the NFT
     * @param symbol The symbol of the NFT
     * @param mintStartDate The start date of the minting window (0 = no restriction)
     * @param mintEndDate The end date of the minting window
     * @param mintPrice The price of a single token
     * @param maxTokensPerUser The maximum number of tokens a user can mint
     * @return newCollection The address of the new Superfluid NFT contract
     */
    function deploySuperfluidNFT(
        string memory name,
        string memory symbol,
        uint256 mintStartDate,
        uint256 mintEndDate,
        uint256 mintPrice,
        uint256 maxTokensPerUser
    ) external returns (address newCollection);

    /**
     * @notice Sets the implementation address of the Superfluid NFT contract
     * @dev Only callable by the owner
     * @param _superfluidNFTImpl The address of the new Superfluid NFT implementation contract
     */
    function setSuperfluidNFTImpl(address _superfluidNFTImpl) external;

    /**
     * @notice Sets the signer address
     * @dev Only callable by the owner
     * @param _signer The address of the new signer
     */
    function setSigner(address _signer) external;

    /**
     * @notice Sets the treasury address
     * @dev Only callable by the owner
     * @param _treasury The address of the new treasury
     */
    function setTreasury(address _treasury) external;

    /**
     * @notice Upgrades the factory contract
     * @dev Only callable by the owner
     * @param newImplementation The address of the new Superfluid NFT Factory implementation contract
     * @param data The data to pass to initialize the new factory implementation
     */
    function upgradeTo(address newImplementation, bytes calldata data) external;

    /**
     * @notice Returns the NFT contract address for a given symbol
     * @param symbol The symbol to look up
     * @return nftContract The address of the NFT contract (address(0) if not found)
     */
    function symbolToNFT(string memory symbol) external view returns (address nftContract);

}
