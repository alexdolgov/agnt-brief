// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {RageStructs} from "./RageStructs.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {IRageBuyingProtocol} from "./IRageBuyingProtocol.sol";
import {IRageCalculation} from "./IRageCalculation.sol";

contract RageOptionNft is ERC721, ReentrancyGuard {
  
    // constant
    uint256 private constant VERSION = 1;

    // state
    string private BASE_URI = "https://api.ultraroundmoney.com/api/rage/option/";
    uint256 private TOTAL_SUPPLY;

    // immutable
    IRageChaosEngine private immutable RAGE_CHAOS_ENGINE;
    IRageCalculation private immutable RAGE_CALCULATION;

    // events
    event BaseUriUpdated(string newBaseURI);
    event OptionMinted(address indexed recipient, uint256 indexed tokenId);
    
    // constructor
    constructor(address rce, address calc) ERC721("RageOption NFT", "RAGEOPTION") {
      require(rce != address(0), "invalidRceAddress");
      RAGE_CHAOS_ENGINE = IRageChaosEngine(rce);
      RAGE_CALCULATION = IRageCalculation(calc);
    }
    
    // exists
    function exists(uint256 tokenId) public view returns (bool) {
      return _ownerOf(tokenId) != address(0);
    }

    // totalSupply
    function totalSupply() public view returns (uint256) {
      return TOTAL_SUPPLY;
    }

    // getRageChaosEngine
    function getRageChaosEngine() public view returns (address) {
      return address(RAGE_CHAOS_ENGINE);
    }

    // getRageBuyingProtocol
    function getRageBuyingProtocol() public view returns (address) {
      return RAGE_CHAOS_ENGINE.getRageBuyingProtocol();
    }

    // contractURI
    // returns the absolute url for contract metadata
    function contractURI() public view returns (string memory) {
      return string(abi.encodePacked(BASE_URI, "contract-metadata.json"));
    }

    // getState
    function getState() external view returns (RageStructs.RonState memory) {
      return RageStructs.RonState({
        version: VERSION,
        rce: address(RAGE_CHAOS_ENGINE),
        rbp: getRageBuyingProtocol(),
        supply: TOTAL_SUPPLY,
        baseUri: BASE_URI,
        contractUri: contractURI()
      });
    }

    // getRbpInstance
    function getRbpInstance() private view returns (IRageBuyingProtocol) {
      address rbp = getRageBuyingProtocol();
      return IRageBuyingProtocol(payable(rbp));
    }

    // isAutomator
    // returns true if the address is the automator
    function isAutomator(address account) public view returns (bool) {
      return account == RAGE_CHAOS_ENGINE.getAutomator();
    }

    // isRageBuyingProtocol
    // returns true if the address is the minter
    function isRageBuyingProtocol(address account) public view returns (bool) {
      return account == getRageBuyingProtocol();
    }

    // setBaseURI
    // update the base URI for token metadata (only automator)
    function setBaseURI(string memory newBaseURI) external nonReentrant {
      require(isAutomator(msg.sender), "unauthorized");
      BASE_URI = newBaseURI;
      emit BaseUriUpdated(newBaseURI);
    }

    // mint
    // mint a new option NFT
    function mint(address recipient, uint256 tokenId) external nonReentrant {
      require(isRageBuyingProtocol(msg.sender), "unauthorized");
      require(recipient != address(0), "invalidRecipient");
      require(tokenId > 0, "tokenIdCannotBeZero" );

      _safeMint(recipient, tokenId);
      TOTAL_SUPPLY++;
      
      emit OptionMinted(recipient, tokenId);
    }
    
    // _baseURI
    // returns the baseUri for the token metadata
    function _baseURI() internal view override returns (string memory) {
      return BASE_URI;
    }

    // tokenURI
    // returns the absolute url for token metadata
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
      require(exists(tokenId), "tokenDoesNotExist");
      string memory baseURI = _baseURI();
      return string(abi.encodePacked(baseURI, Strings.toString(tokenId), ".json"));
    }
    
    // getOption
    // returns the option object from within the rageBuyingProtocol
    // does not check if the token exists
    function getOption(uint256 tokenId) public view returns (RageStructs.Option memory) {
      IRageBuyingProtocol rbp = getRbpInstance();
      return rbp.getOption(tokenId);
    }

    // getAllForOwner
    // returns all Rage Option objects owned by a specific address filtered by the status passed in argument
    // pass status 0 to return all nfts for the owner regardless of status
    function getAllForOwner(address owner, uint256 status) external view returns (RageStructs.Option[] memory) {
      uint256 count = 0;
      uint256 supply = totalSupply();
      for (uint256 i = 1; i <= supply; i++) {
          if (exists(i) && ownerOf(i) == owner) {
              RageStructs.Option memory option = getOption(i);
              if (status == 0 || option.status == status) {
                  count++;
              }
          }
      }
      
      // now fill the array
      RageStructs.Option[] memory options = new RageStructs.Option[](count);
      uint256 index = 0;
      for (uint256 i = 1; i <= supply; i++) {
          if (exists(i) && ownerOf(i) == owner) {
              RageStructs.Option memory option = getOption(i);
              if (status == 0 || option.status == status) {
                  options[index] = option;
                  index++;
              }
          }
      }
      
      return options;
    }

    // getAllOptions
    // returns all options for all nft
    function getAllOptions(uint256 offset, uint256 limit) external view returns (RageStructs.Option[] memory) {
      uint256 totalOptions = totalSupply();
      
      // return empty array if no options exist or offset is beyond available options
      if (totalOptions == 0 || offset >= totalOptions) {
          return new RageStructs.Option[](0);
      }

      uint256 end = offset + limit;
      if (end > totalOptions) {
          end = totalOptions;
      }
      uint256 length = end - offset;

      RageStructs.Option[] memory options = new RageStructs.Option[](length);

      for (uint256 i = 0; i < length; i++) {
          // options are stored with IDs starting from 1
          uint256 optionId = i + offset + 1;
          options[i] = getOption(optionId);
      }

      return options;
    }

    // getOptionsOverview
    // loops through all options, returns total debt, adp debt and refund debt which can be redeemed now, also return rage which are still mintable now
    // adpDebtReal calculates the real dilution amount, will return 0 if assets are still worth more than adp usdc value
    function getOptionsOverview(uint32 twap, uint256 refundTime) external view returns (RageStructs.OptionsOverview memory) {
      RageStructs.OptionsOverview memory overview;
      uint256 totalOptions = totalSupply();
      uint256 currentTime = block.timestamp;
      uint256 refundableThreshold = currentTime + refundTime;
      IRageBuyingProtocol rbp = getRbpInstance();
      
      for (uint256 i = 1; i <= totalOptions; i++) {
          RageStructs.Option memory opt = getOption(i);
          
          if(opt.status == 0) {
            continue;
          }

          // active options
          if (opt.status == 1) {
              overview.optionActiveCount++;
              
              // track pending assets for active options
              overview.totalPendingHestia += opt.pendingHestia;
              overview.totalPendingCircle += opt.pendingCircle;
              
              // calculate current asset value
              uint256 usdcAssets = RAGE_CALCULATION.getIncomingAssetsValue(
                  opt.pendingHestia,
                  opt.pendingCircle,
                  twap
              );
              
              // check time-based eligibility once
              bool isMintable = currentTime >= opt.dateMintable;
              bool isAdpAble = currentTime >= opt.dateAdpAble;
              bool isRefundable = currentTime >= opt.dateRefundable;
              
              if (isMintable) {
                  overview.optionsMintableNow++;
                  
                  // get the NFT owner and call optionOverview to get mintable RAGE
                  address nftOwner = ownerOf(i);
                  RageStructs.OptionOverview memory optOverview = rbp.optionOverview(nftOwner, i);
                  overview.mintableRage += optOverview.rageMint;
              }
              
              if (isAdpAble) {
                  overview.optionsAdpAbleNow++;
                  overview.adpDebt += opt.usdcAdp;
                  if (opt.usdcAdp > usdcAssets) {
                      overview.adpDebtReal += (opt.usdcAdp - usdcAssets);
                  }
              }
              
              if (isRefundable) {
                  overview.optionsRefundableNow++;
                  overview.refundDebt += opt.usdcRefund;
                  if (opt.usdcRefund > usdcAssets) {
                      overview.refundDebtReal += (opt.usdcRefund - usdcAssets);
                  }
              }
              
              // check if refundable within specified time
              if (opt.dateRefundable <= refundableThreshold) {
                  overview.optionsRefundableWithinThreshold++;
                  
                  if (opt.usdcRefund > usdcAssets) {
                      overview.refundDebtRealThreshold += opt.usdcRefund - usdcAssets;
                  }
              }
              
              // calculate debts for active options
              overview.totalDebt += opt.usdcRefund;
              
              // real total debt
              if (opt.usdcRefund > usdcAssets) {
                  overview.totalDebtReal += opt.usdcRefund - usdcAssets;
              }
              
          } else if (opt.status == 2) {
              overview.optionMintCount++;
              overview.totalRageMinted += opt.rageMinted;
          } else if (opt.status == 3) {
              overview.optionAdpCount++;
              overview.totalRageMinted += opt.rageMinted;
              overview.totalAdpDilution += opt.usdcAdpDilution;
          } else if (opt.status == 4) {
              overview.optionRefundCount++;
              overview.totalRefundValue += opt.usdcRefund;
          }
          
          // track totals for all options regardless of status
          overview.usdcInvested += opt.usdcInvest;
          overview.usdcBonus += opt.usdcInvestorBonus;
          overview.hestiaInvestorBonus += opt.hestiaInvestorBonus;
          overview.circleInvestorBonus += opt.circleInvestorBonus;
      }
      
      return overview;
    }

    // getAllClaims
    // returns all claims from the rbp instance
    function getAllClaims(uint256 offset, uint256 limit) external view returns (RageStructs.Claim[] memory) {
      IRageBuyingProtocol rbp = getRbpInstance();
      address[] memory claimWallets = rbp.getClaimWallets();
      uint256 totalClaims = claimWallets.length;
      
      // return empty array if no claims exist or offset is beyond available claims
      if (totalClaims == 0 || offset >= totalClaims) {
          return new RageStructs.Claim[](0);
      }

      uint256 end = offset + limit;
      if (end > totalClaims) {
          end = totalClaims;
      }
      uint256 length = end - offset;

      RageStructs.Claim[] memory claims = new RageStructs.Claim[](length);

      for (uint256 i = 0; i < length; i++) {
          address wallet = claimWallets[i + offset];
          claims[i] = rbp.getClaim(wallet);
      }

      return claims;
    }

    // getClaimsOverview
    // returns comprehensive overview of all claims including pending, active, and historical data
    function getClaimsOverview() external view returns (RageStructs.ClaimsOverview memory) {
      RageStructs.ClaimsOverview memory overview;
      IRageBuyingProtocol rbp = getRbpInstance();
      address[] memory claimWallets = rbp.getClaimWallets();
      uint256 totalClaimsCount = claimWallets.length;
      uint256 currentTime = block.timestamp;
      
      for (uint256 i = 0; i < totalClaimsCount; i++) {
          address wallet = claimWallets[i];
          RageStructs.Claim memory claim = rbp.getClaim(wallet);
          
          if (claim.status == 1) {
              overview.activeClaimsCount++;
              
              // track total RAGE to burn from active claims
              overview.totalRageToBurn += claim.rageBurn;
              
              // get recalculated assets to determine actual claimable amounts
              (uint256 recalcHestia, uint256 recalcCircle) = rbp.getAssetsFromRage(claim.rageAfterFee);
              uint256 actualHestia = claim.claimHestia < recalcHestia ? claim.claimHestia : recalcHestia;
              uint256 actualCircle = claim.claimCircle < recalcCircle ? claim.claimCircle : recalcCircle;
              
              // categorize by time window
              if (currentTime < claim.dateClaimableStart) {
                  // pending claims (not yet claimable)
                  overview.pendingClaimsCount++;
                  overview.pendingHestia += actualHestia;
                  overview.pendingCircle += actualCircle;
              } else if (currentTime >= claim.dateClaimableStart && currentTime <= claim.dateClaimableEnd) {
                  // currently claimable
                  overview.claimableNowCount++;
                  overview.claimableHestia += actualHestia;
                  overview.claimableCircle += actualCircle;
              } else {
                  // expired (past claim window)
                  overview.expiredClaimsCount++;
              }
              
          } else if (claim.status == 2) {
              overview.claimedCount++;
              
              // track historical claimed amounts
              overview.totalClaimedHestia += claim.totalClaimHestia;
              overview.totalClaimedCircle += claim.totalClaimCircle;
          }
      }
      
      return overview;
    }
}