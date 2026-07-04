// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from 'openzeppelin/token/ERC20/IERC20.sol';

/**
 * @title Signed Distributor Contract
 * @author Wonderland
 * @notice This contract is used to distribute tokens to users based on a merkle root and a signature
 */
interface ISignedDistributor {
  /*///////////////////////////////////////////////////////////////
                            EVENTS
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Emitted when a user claims their tokens
   * @param account The account that claimed the tokens
   * @param amount The amount of tokens claimed
   */
  event Claimed(address indexed account, uint256 amount);

  /**
   * @notice Emitted when the owner withdraws tokens from the contract
   * @param account The account that withdrew the tokens
   * @param amount The amount of tokens withdrawn
   */
  event Withdrawn(address indexed account, uint256 amount);

  /**
   * @notice Emitted when the signer is updated by the owner
   * @param oldSigner The old signer address
   * @param newSigner The new signer address
   */
  event SignerUpdated(address indexed oldSigner, address indexed newSigner);

  /*///////////////////////////////////////////////////////////////
                            ERRORS
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Throws if the input amount is zero
   */
  error InvalidAmount();

  /**
   * @notice Throws if the input signature is invalid
   */
  error InvalidSignature();

  /**
   * @notice Throws if the user has already claimed their tokens
   */
  error AlreadyClaimed();

  /**
   * @notice Throws if the recovered signer is different from the expected signer
   */
  error InvalidSigner();

  /**
   * @notice Throws if the merkle verification fails
   */
  error InvalidProof();

  /**
   * @notice Throws if the new signer address is invalid
   */
  error InvalidNewSigner();

  /*///////////////////////////////////////////////////////////////
                            LOGIC
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Claims the tokens for the sender
   * @param amount The amount of tokens to claim
   * @param merkleProof The merkle proof for the claim
   * @param signature The signature for verification of the claim data
   */
  function claim(uint256 amount, bytes32[] calldata merkleProof, bytes calldata signature) external;

  /**
   * @notice Sends the remaining tokens to the owner
   * @dev Only callable by the owner
   */
  function withdraw() external;

  /**
   * @notice Updates the signer address
   * @param newSigner The new signer address
   * @dev Only callable by the owner
   */
  function updateSigner(address newSigner) external;

  /*///////////////////////////////////////////////////////////////
                            VARIABLES
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice The root of the merkle tree
   * @return _merkleRoot The root of the merkle tree
   */
  // solhint-disable-next-line func-name-mixedcase
  function MERKLE_ROOT() external view returns (bytes32 _merkleRoot);

  /**
   * @notice The token being distributed
   * @return _token The address of the token
   */
  // solhint-disable-next-line func-name-mixedcase
  function TOKEN() external view returns (IERC20 _token);

  /**
   * @notice The address of the signer
   * @return _signer The address of the signer
   */
  function signer() external view returns (address _signer);

  /**
   * @notice Returns whether the user has claimed their tokens
   * @param _user The address of the user
   * @return _claimed Whether the user has claimed their tokens
   */
  function hasClaimed(address _user) external view returns (bool _claimed);
}
