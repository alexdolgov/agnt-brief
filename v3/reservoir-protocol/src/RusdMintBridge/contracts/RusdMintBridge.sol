// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// interfaces
import { RusdOftAdapter } from "./RusdOftAdapter.sol";
import { IRusdMintBridge } from "./interfaces/IRusdMintBridge.sol";
import { ICreditEnforcer } from "./interfaces/ICreditEnforcer.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// layer-zero
import { SendParam } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { MessagingFee } from "@layerzerolabs/oft-evm/contracts/OFTCore.sol";

// helpers
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// libraries
import "./libraries/ConstantsLib.sol";
import "./libraries/EventsLib.sol";

contract RusdMintBridge is IRusdMintBridge {
    using SafeERC20 for IERC20;

    /// @inheritdoc IRusdMintBridge
    IERC20 public constant usdc = IERC20(USDC_ADDRESS);

    /// @inheritdoc IRusdMintBridge
    IERC20 public constant rusd = IERC20(RUSD_ADDRESS);

    /// @inheritdoc IRusdMintBridge
    RusdOftAdapter public immutable rusdOftAdapter;

    /// @inheritdoc IRusdMintBridge
    ICreditEnforcer public constant creditEnforcer = ICreditEnforcer(CREDITENFORCER_ADDRESS);

    /* CONSTRUCTOR */

    /// @param _rusdL0Adapter The address of rUSD OFT Adapter (on eth mainnet)
    constructor(address _rusdL0Adapter) {
        rusdOftAdapter = RusdOftAdapter(_rusdL0Adapter);
    }

    /* MINTING */

    /// @inheritdoc IRusdMintBridge
    function mintRusd(SendParam calldata sendParam, MessagingFee calldata messagingFee) external payable {
        uint256 usdcAmount = sendParam.amountLD / 1e12;

        usdc.safeTransferFrom(msg.sender, address(this), usdcAmount);

        usdc.approve(PSM_ADDRESS, usdcAmount);

        creditEnforcer.mintStablecoin(address(this), usdcAmount);

        rusd.approve(address(rusdOftAdapter), sendParam.amountLD);

        rusdOftAdapter.send{ value: msg.value }(sendParam, messagingFee, payable(msg.sender));

        emit EventsLib.MintRusd(
            msg.sender,
            sendParam.dstEid,
            address(uint160(uint256(sendParam.to))),
            sendParam.amountLD,
            block.timestamp
        );
    }
}
