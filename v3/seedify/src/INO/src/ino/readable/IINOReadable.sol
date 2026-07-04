// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {INOStorage} from "../INOStorage.sol";

interface IINOReadable {
    /**
     * @param phaseId The ID of the phase to get the max mintable amount.
     * @return phaseMaxMint The maximum amount of NFTs that can be minted in the phase.
     */
    function phaseMaxMint(
        string calldata phaseId
    ) external view returns (uint256);

    /**
     * @return 
            - `paymentReceiver` address of the wallet to receive the payments
            - `projectWallet` address of the project which will receive
              the NFT owner rights after the INO ends.
     */
    function inoSetUp() external view returns (INOStorage.SetUp memory);

    /// @dev Amount of NFTs minted by users in a specific phase.
    function mintedInPhase(
        string calldata phaseId
    ) external view returns (uint256);

    /// @dev Address of the NFT collection contract to mint when buying.
    function nftCollection() external view returns (address);

    function nftCollectionData()
        external
        view
        returns (INOStorage.NFTCollectionData memory);

    /// @dev Amount of NFTs minted by users in the whole INO.
    function totalMinted() external view returns (uint256);
}
