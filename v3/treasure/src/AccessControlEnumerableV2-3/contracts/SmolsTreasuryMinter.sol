// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

SmolsExchanger.sol

Written by: mousedev.eth

*/

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./utilities/AccessControlEnumerableV2.sol";
import "./SmolsAddressRegistryConsumer.sol";
import "./libraries/SmolsLibrary.sol";
import "./interfaces/ISmolsState.sol";
import "./interfaces/ISmols.sol";
import "./interfaces/ISchool.sol";


contract SmolsTreasuryMinter is
    AccessControlEnumerableV2,
    SmolsAddressRegistryConsumer
{
    bytes32 public merkleRoot;
    address public oldSmols;

    /// @dev Mints a smol for the treasury
    /// @param _smolIds The tokenIds of the smols to burn/mint.
    /// @param _smols The smols data.
    /// @param _proofs The proofs to use to verify smols data.
    function mintOnChainSmolsForTreasury(
        uint256[] memory _smolIds,
        Smol[] memory _smols,
        bytes32[][] memory _proofs
    ) external requiresRole(OWNER_ROLE){

        for (uint256 i = 0; i < _smolIds.length; i++) {
            uint256 _smolId = _smolIds[i];

            //6364 - 6710 unminted.
            //13074 - 13421 unminted.

            require(_smolId <= 13421, "Invalid Range");

            Smol memory _thisSmol = _smols[i];

            address oldSmolsAddress = smolsAddressRegistry.getAddress(
                SmolAddressEnum.OLDSMOLSADDRESS
            );
            address smolsAddress = smolsAddressRegistry.getAddress(
                SmolAddressEnum.SMOLSADDRESS
            );
            address smolsStateAddress = smolsAddressRegistry.getAddress(
                SmolAddressEnum.SMOLSSTATEADDRESS
            );

            try IERC721(oldSmolsAddress).ownerOf(_smolId) {
                //This is bad, owner is not null
                revert("Smol was already minted");
            } catch Error(string memory){
                //This is good, owner is null
            }


            require(merkleRoot != 0x0, "Merkle Root unset!");

            //Verify smol data
            require(
                MerkleProof.verify(
                    _proofs[i],
                    merkleRoot,
                    keccak256(
                        abi.encodePacked(
                            _smolId,
                            _thisSmol.background,
                            _thisSmol.body,
                            _thisSmol.clothes,
                            _thisSmol.mouth,
                            _thisSmol.glasses,
                            _thisSmol.hat,
                            _thisSmol.hair,
                            _thisSmol.gender
                        )
                    )
                ),
                "Invalid smols data."
            );

            //Mint the new smol
            ISmols(smolsAddress).privilegedMint(0x674295B530A1F69a4Bc217FFFB7E8BcDF9971678, _smolId);

            //Set the smol data
            ISmolsState(smolsStateAddress).setInitialSmol(
                _smolId,
                Smol(
                    _thisSmol.background,
                    _thisSmol.body,
                    _thisSmol.clothes,
                    _thisSmol.mouth,
                    _thisSmol.glasses,
                    _thisSmol.hat,
                    _thisSmol.hair,
                    0,
                    _thisSmol.gender,
                    0
                )
            );
        }
    }


    function setMerkleRoot(
        bytes32 _merkleRoot
    ) external requiresRole(OWNER_ROLE) {
        merkleRoot = _merkleRoot;
    }

}
