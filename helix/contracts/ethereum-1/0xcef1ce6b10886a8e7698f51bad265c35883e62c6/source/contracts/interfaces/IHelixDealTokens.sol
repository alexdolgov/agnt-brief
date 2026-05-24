// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import {IERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol";
import "./IHelixDealStats.sol";

interface IHelixDealTokens is IERC721Upgradeable, IHelixDealStats {
  struct TokenInfo {
    address deal;
    uint256 principalInvested;
    uint256 principalRepaid;
    uint256 cumulativeReturns;
  }
  struct ProtocolStats {
    uint256 principalInvested;
    uint256 principalRepaid;
    uint256 cumulativeReturns;
  }
  
  function calculateTokenId(address deal, address investor) external view returns(uint256);
  function dealTVL(address deal) external view returns(uint256);
  /**
   * @notice Called by deal to create a digital representation of an investment into the deal
   * @param principalAmount Principal amount that an investor wants to invest
   * @param to The address that owns the investment
   * @return tokenId The token ID (auto-incrementing integer across all deal)
   */
  function mint(uint256 principalAmount, address to) external returns (uint256);

  /**
   * @notice Update principalInvested, principalRepaid, cumulativeReturns on a deal. Called by valid deals as part of their 
   *  repayment booking or investment flow.
   * @param principalRepaid principal repaid. This cannot exceed the deal's total principal invested.
   * @param principalInvested  Amount invested by investor.
   * @param returnPaid amount of return paid.
   */
  function updateDealStats(
    uint256 principalInvested,
    uint256 principalRepaid,
    uint256 returnPaid
  ) external;

  /**
   * @notice Update principalInvested, principalRepaid, cumulativeReturns for the whole protocol. Called by valid deals as part of their 
   *  repayment booking or investment flow.
   * @param principalRepaid principal repaid. This cannot exceed the protocol's total principal invested.
   * @param principalInvested  Amount invested by investor.
   * @param returnPaid amount of return paid.
   */
  function updateProtocolStats(
    uint256 principalInvested,
    uint256 principalRepaid,
    uint256 returnPaid
  ) external;

  /**
   * @notice Book principalRepaid and reuturnPaid on a deal token. Called by valid deals as part of their 
   *  repayment booking flow
   * @param tokenId deal token id
   * @param principalRepaid principal repaid. This cannot exceed the deal's total principal invested
   * @param returnPaid amount of return paid.
   */
  function bookRepayment(uint256 tokenId, uint256 principalRepaid, uint256 returnPaid) external;
  
  /**
   * @notice Burns a specific ERC721 token and removes deletes the token metadata for tokens
   * @param tokenId uint256 id of the ERC721 token to be burned.
   */
  function burn(uint256 tokenId) external;
  /**
   * @notice Called by the HelixFactory to register the deal as a valid deal. Only valid deal can
   * trigger functions like mint, bookRepayment on the token
   * @param newDeal The address of the newly created deal
   */
  function onDealCreated(address newDeal) external;
  function getTokenInfo(uint256 tokenId) external view returns (TokenInfo memory);
  function getDealStats(address deal) external view returns (DealStats memory);
  function getProtocolStats() external view returns (ProtocolStats memory);
  /// @notice Query if `deal` is a valid deal. A deal is valid if it was created by the Helix Factory
  function isValidDeal(address deal) external view returns (bool);
  function isApprovedOrOwner(address spender, uint256 tokenId) external view returns (bool);
  // ============= Events =============== // 
  /**
   * @notice Mint event emitted when a token is minted
   * @param owner address to which the token was minted
   * @param  deal that the token belongs to
   * @param tokenId ERC721 tokenId
   */
  event TokenMinted(
    address indexed owner,
    address indexed deal,
    uint256 indexed tokenId
  );
  /**
   * @notice RepaymentBooked event emitted when 'repayment of principal' or 'payment of investment return' is booked in the token's deal
   * @param owner owner of the deal token
   * @param deal that the token belongs to
   * @param principalRepaid amount of principal repaid
   * @param returnPaid amount of return paid
   */
  event TokenRepaymentBooked(
    address indexed owner,
    address indexed deal,
    uint256 indexed tokenId,
    uint256 principalRepaid,
    uint256 returnPaid
  );
  /**
   * @notice Burn event emitted when the token is burned
   * @param owner owner of the deal token
   * @param deal that the token belongs to
   */
  event TokenBurned(address indexed owner, address indexed deal, uint256 indexed tokenId);
  event TokenPrincipalUpdated(
    address indexed owner,
    address indexed deal,
    uint256 indexed tokenId,
    uint256 amount
  );

  event DealStatsUpdated(
    address indexed deal,
    uint256 previousPrincipalInvested,
    uint256 previousPrincipalRepaid,
    uint256 previousReturnPaid,
    uint256 updatedPrincipalvested,
    uint256 updatedPrincipalRepaid,
    uint256 updatedCumulativeReturns
  );

  event ProtocolStatsUpdated(
    uint256 previousPrincipalInvested,
    uint256 previousPrincipalRepaid,
    uint256 previousReturnPaid,
    uint256 updatedPrincipalvested,
    uint256 updatedPrincipalRepaid,
    uint256 updatedCumulativeReturns
  );
}
