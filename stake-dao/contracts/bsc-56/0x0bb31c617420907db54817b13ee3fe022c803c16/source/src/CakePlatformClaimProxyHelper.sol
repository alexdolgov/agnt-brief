// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;
/*
▄▄▄█████▓ ██░ ██ ▓█████     ██░ ██ ▓█████  ██▀███  ▓█████▄ 
▓  ██▒ ▓▒▓██░ ██▒▓█   ▀    ▓██░ ██▒▓█   ▀ ▓██ ▒ ██▒▒██▀ ██▌
▒ ▓██░ ▒░▒██▀▀██░▒███      ▒██▀▀██░▒███   ▓██ ░▄█ ▒░██   █▌
░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄    ░▓█ ░██ ▒▓█  ▄ ▒██▀▀█▄  ░▓█▄   ▌
  ▒██▒ ░ ░▓█▒░██▓░▒████▒   ░▓█▒░██▓░▒████▒░██▓ ▒██▒░▒████▓ 
  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░    ▒ ░░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░ ▒▒▓  ▒ 
    ░     ▒ ░▒░ ░ ░ ░  ░    ▒ ░▒░ ░ ░ ░  ░  ░▒ ░ ▒░ ░ ▒  ▒ 
  ░       ░  ░░ ░   ░       ░  ░░ ░   ░     ░░   ░  ░ ░  ░ 
          ░  ░  ░   ░  ░    ░  ░  ░   ░  ░   ░        ░    
                                                    ░      
              .,;>>%%%%%>>;,.
           .>%%%%%%%%%%%%%%%%%%%%>,.
         .>%%%%%%%%%%%%%%%%%%>>,%%%%%%;,.
       .>>>>%%%%%%%%%%%%%>>,%%%%%%%%%%%%,>>%%,.
     .>>%>>>>%%%%%%%%%>>,%%%%%%%%%%%%%%%%%,>>%%%%%,.
   .>>%%%%%>>%%%%>>,%%>>%%%%%%%%%%%%%%%%%%%%,>>%%%%%%%,
  .>>%%%%%%%%%%>>,%%%%%%>>%%%%%%%%%%%%%%%%%%,>>%%%%%%%%%%.
  .>>%%%%%%%%%%>>,>>>>%%%%%%%%%%'..`%%%%%%%%,;>>%%%%%%%%%>%%.
.>>%%%>>>%%%%%>,%%%%%%%%%%%%%%.%%%,`%%%%%%,;>>%%%%%%%%>>>%%%%.
>>%%>%>>>%>%%%>,%%%%%>>%%%%%%%%%%%%%`%%%%%%,>%%%%%%%>>>>%%%%%%%.
>>%>>>%%>>>%%%%>,%>>>%%%%%%%%%%%%%%%%`%%%%%%%%%%%%%%%%%%%%%%%%%%.
>>%%%%%%%%%%%%%%,>%%%%%%%%%%%%%%%%%%%'%%%,>>%%%%%%%%%%%%%%%%%%%%%.
>>%%%%%%%%%%%%%%%,>%%%>>>%%%%%%%%%%%%%%%,>>%%%%%%%%>>>>%%%%%%%%%%%.
>>%%%%%%%%;%;%;%%;,%>>>>%%%%%%%%%%%%%%%,>>>%%%%%%>>;";>>%%%%%%%%%%%%.
`>%%%%%%%%%;%;;;%;%,>%%%%%%%%%>>%%%%%%%%,>>>%%%%%%%%%%%%%%%%%%%%%%%%%%.
 >>%%%%%%%%%,;;;;;%%>,%%%%%%%%>>>>%%%%%%%%,>>%%%%%%%%%%%%%%%%%%%%%%%%%%%.
 `>>%%%%%%%%%,%;;;;%%%>,%%%%%%%%>>>>%%%%%%%%,>%%%%%%'%%%%%%%%%%%%%%%%%%%>>.
  `>>%%%%%%%%%%>,;;%%%%%>>,%%%%%%%%>>%%%%%%';;;>%%%%%,`%%%%%%%%%%%%%%%>>%%>.
   >>>%%%%%%%%%%>> %%%%%%%%>>,%%%%>>>%%%%%';;;;;;>>,%%%,`%     `;>%%%%%%>>%%
   `>>%%%%%%%%%%>> %%%%%%%%%>>>>>>>>;;;;'.;;;;;>>%%'  `%%'          ;>%%%%%>
    >>%%%%%%%%%>>; %%%%%%%%>>;;;;;;''    ;;;;;>>%%%                   ;>%%%%
    `>>%%%%%%%>>>, %%%%%%%%%>>;;'        ;;;;>>%%%'                    ;>%%%
     >>%%%%%%>>>':.%%%%%%%%%%>>;        .;;;>>%%%%                    ;>%%%'
     `>>%%%%%>>> ::`%%%%%%%%%%>>;.      ;;;>>%%%%'                   ;>%%%'
      `>>%%%%>>> `:::`%%%%%%%%%%>;.     ;;>>%%%%%                   ;>%%'
       `>>%%%%>>, `::::`%%%%%%%%%%>,   .;>>%%%%%'                   ;>%'
        `>>%%%%>>, `:::::`%%%%%%%%%>>. ;;>%%%%%%                    ;>%,
         `>>%%%%>>, :::::::`>>>%%%%>>> ;;>%%%%%'                     ;>%,
          `>>%%%%>>,::::::,>>>>>>>>>>' ;;>%%%%%                       ;%%,
            >>%%%%>>,:::,%%>>>>>>>>'   ;>%%%%%.                        ;%%
             >>%%%%>>``%%%%%>>>>>'     `>%%%%%%.
             >>%%%%>> `@@a%%%%%%'     .%%%%%%%%%.
             `a@@a%@'    `%a@@'       `a@@a%a@@a
 */

import {Owned} from "solmate/auth/Owned.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {CakePlatform} from "src/CakePlatform.sol";
import {IGaugeVoting} from "src/interfaces/IGaugeVoting.sol";
import {IVotingEscrow} from "src/interfaces/IVotingEscrow.sol";
import {ReentrancyGuard} from "solmate/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "solady/src/utils/FixedPointMathLib.sol";

/// @title  PancakeSwap CakePlatform claim helper contract.
/// @author Stake DAO
/// @notice Fixing the claim for users who have migrated from the Cake Pool (so voted via their proxy)
contract CakePlatformClaimProxyHelper is Owned, ReentrancyGuard {
    /// @notice Gauge Controller.
    IGaugeVoting public immutable gaugeController;

    /// @notice Voting Escrow.
    IVotingEscrow public immutable escrow;

    /// @notice Platform contract.
    CakePlatform public immutable platform;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    /// @notice Create Bounty platform.
    /// @param _gaugeController Address of the gauge controller.
    /// @param _platform Address of the platform contract.
    constructor(address _gaugeController, address _platform, address _owner) Owned(_owner) {
        gaugeController = IGaugeVoting(_gaugeController);
        platform = CakePlatform(_platform);
        escrow = IVotingEscrow(gaugeController.votingEscrow());
    }

    function claimable(address user, uint256 bountyId) external view returns (uint256 amount) {
        // Retrieve if user has Cake Pool Proxy
        (,, address cakePoolProxy,,,,,) = escrow.getUserInfo(user);

        if (cakePoolProxy != address(0)) {
            amount += platform.claimable(cakePoolProxy, bountyId);
        }

        amount += platform.claimable(user, bountyId);
    }

    /// @notice Claim rewards for a given bounty.
    /// @param bountyId ID of the bounty.
    /// @return amount Amount of rewards claimed.
    function claim(uint256 bountyId) external returns (uint256 amount) {
        // Retrieve if user has Cake Pool Proxy
        (,, address cakePoolProxy,,,,,) = escrow.getUserInfo(msg.sender);

        if (cakePoolProxy != address(0)) {
            if (platform.recipient(cakePoolProxy) != msg.sender) {
                // Set user as recipient for proxy
                platform.setRecipientFor(cakePoolProxy, msg.sender);
            }
            amount += platform.claimFor(cakePoolProxy, bountyId);
        }

        amount += platform.claimFor(msg.sender, bountyId);
    }

    ////////////////////////////////////////////////////////////////
    /// --- OWNER ONLY
    ///////////////////////////////////////////////////////////////

    /// @notice Set the recipient for a given address.
    /// @param _for Address to set the recipient for.
    /// @param _recipient Address of the recipient.
    function setRecipientFor(address _for, address _recipient) external onlyOwner {
        platform.setRecipientFor(_for, _recipient);
    }

    /// @notice Set the platform fee.
    /// @param _platformFee Platform fee.
    function setPlatformFee(uint256 _platformFee) external onlyOwner {
        platform.setPlatformFee(_platformFee);
    }

    /// @notice Set the fee collector.
    /// @param _feeCollector Address of the fee collector.
    function setFeeCollector(address _feeCollector) external onlyOwner {
        platform.setFeeCollector(_feeCollector);
    }

    function kill() external onlyOwner {
        platform.kill();
    }

    function transferPlatformOwnership(address _newOwner) external onlyOwner {
        platform.transferOwnership(_newOwner);
    }
}
