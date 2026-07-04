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


contract SmolsExchanger is
    AccessControlEnumerableV2,
    SmolsAddressRegistryConsumer
{
    bytes32 public merkleRoot;
    bytes32 public iqMerkleRoot;
    bool exchangingAllowed;

    /// @dev Burns an old smol and mints a new smol. Uses a merkle tree to ensure the traits are the same and sets the data in state.
    /// @param _smolIds The tokenIds of the smols to burn/mint.
    /// @param _smols The smols data.
    /// @param _proofs The proofs to use to verify smols data.
    function onChainMySmolsPlease(
        uint256[] memory _smolIds,
        Smol[] memory _smols,
        bytes32[][] memory _proofs,
        uint128[] memory _smolIqAmounts,
        bytes32[][] memory _iqProofs
    ) external {
        require(exchangingAllowed, "Exchanging is currently disabled!");

        for (uint256 i = 0; i < _smolIds.length; i++) {
            uint256 _smolId = _smolIds[i];

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

            address schoolAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SCHOOLADDRESS);

            //Note, I did not store the addresses in the stack, as it would become too deep.
            require(
                IERC721(oldSmolsAddress).ownerOf(_smolId) == msg.sender,
                "You don't own this token!"
            );
            require(merkleRoot != 0x0, "Merkle Root unset!");
            require(iqMerkleRoot != 0x0, "IQ Merkle Root unset!");

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

            require(
                MerkleProof.verify(
                    _iqProofs[i],
                    iqMerkleRoot,
                    keccak256(abi.encodePacked(_smolId, _smolIqAmounts[i]))
                ),
                "Invalid IQ input."
            );

            //Burn the old smol
            IERC721(oldSmolsAddress).transferFrom(
                msg.sender,
                0x000000000000000000000000000000000000dEaD,
                _smolId
            );

            //Mint the new smol
            ISmols(smolsAddress).privilegedMint(msg.sender, _smolId);

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

            //Give them their old IQ.
            ISchool(schoolAddress).addStatAsAllowedAdjuster(
                smolsAddress,
                //stat id 0 is IQ.
                0,
                _smolId,
                _smolIqAmounts[i]
            );
        }
    }

    function toggleExchangingEnabled(bool _exchangingAllowed) external requiresEitherRole(OWNER_ROLE, SMOLS_EXCHANGER_ADMIN_ROLE){
        exchangingAllowed = _exchangingAllowed;
    }

    function setMerkleRoot(
        bytes32 _merkleRoot
    ) external requiresEitherRole(OWNER_ROLE, SMOLS_EXCHANGER_ADMIN_ROLE) {
        merkleRoot = _merkleRoot;
    }

    function setIQMerkleRoot(
        bytes32 _iqMerkleRoot
    ) external requiresEitherRole(OWNER_ROLE, SMOLS_EXCHANGER_ADMIN_ROLE) {
        iqMerkleRoot = _iqMerkleRoot;
    }
}
