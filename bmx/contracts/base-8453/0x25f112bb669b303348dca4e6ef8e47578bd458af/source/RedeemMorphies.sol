// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title RedeemMorphies
 * @author daedboi (Morphex)
 * @dev Allows users to redeem their Morphie NFTs for wBNB under specific terms and conditions.
 */
contract RedeemMorphies is Ownable {
    uint256 public constant wBnbPerMorphie = 306122448979590000; // 165 BNB / 539 Morphies
    IERC721 public constant morphies =
        IERC721(0x2183765B7F1CD9B6dc7d12a936B4d31110ee4225);
    IERC20 public constant wbnb =
        IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    string public constant terms =
        "By redeeming my Morphie(s) for wBNB, I acknowledge and agree that the redeemed Morphie(s) will thereafter possess no utility, including but not limited to, generating revenue or participating in governance. This redemption is irreversible, and I relinquish any future claims related to the utility or benefits of the Morphie(s) post-redemption.";
    mapping(uint256 => bool) public redeemedMorphies;
    mapping(address => bool) public hasAcceptedTerms;

    event TermsAccepted(address indexed user);
    event Redeemed(
        address indexed user,
        uint256[] tokenIds,
        uint256 redeemAmount
    );
    event TokensCollected(address indexed owner, uint256 amount);

    /**
     * @notice Accept the terms of service.
     */
    function acceptTerms() public {
        require(!hasAcceptedTerms[msg.sender], "Terms already accepted.");

        hasAcceptedTerms[msg.sender] = true;
        emit TermsAccepted(msg.sender);
    }

    /**
     * @notice Redeems Morphies for wBNB per "wBnbPerMorphie".
     * @param tokenIds Array of Morphie IDs to redeem.
     */
    function redeem(uint256[] calldata tokenIds) public {
        require(hasAcceptedTerms[msg.sender], "Accept terms first.");
        uint256 redeemAmount;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            require(
                !redeemedMorphies[tokenIds[i]],
                "Morphie already redeemed!"
            );
            require(
                morphies.ownerOf(tokenIds[i]) == msg.sender,
                "This Morphie does not belong to msg.sender."
            );

            redeemedMorphies[tokenIds[i]] = true;
            redeemAmount += wBnbPerMorphie;
        }

        wbnb.transfer(msg.sender, redeemAmount);
        emit Redeemed(msg.sender, tokenIds, redeemAmount);
    }

    /**
     * @notice Allows the contract owner to collect any leftover wBNB tokens.
     * @dev Intended for use in recovering tokens mistakenly sent to the contract or unclaimed tokens.
     */
    function collectLeftoverTokens() external onlyOwner {
        uint256 balance = wbnb.balanceOf(address(this));

        wbnb.transfer(owner(), balance);
        emit TokensCollected(owner(), balance);
    }
}
