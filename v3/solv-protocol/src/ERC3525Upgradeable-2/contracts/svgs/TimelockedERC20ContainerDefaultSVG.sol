// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@solvprotocol/contracts-v3-solidity-utils/contracts/misc/StringConvertor.sol";
import "@solvprotocol/contracts-v3-solidity-utils/contracts/misc/Dates.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../TimelockedERC20ContainerDelegate.sol";
import "../TimelockedERC20ContainerConcrete.sol";
import "../TimelockedERC20ContainerMetadataDescriptor.sol";

contract TimelockedERC20ContainerDefaultSVG {

    using Strings for uint256;
    using Strings for address;
    using StringConvertor for uint256;
    using StringConvertor for bytes;
    using Dates for uint256;

    event SetColor(address indexed sftAddress, string[2] colors);
    
    struct SVGParams {
        address sftAddress;
        uint256 slot;
        uint256 tokenId;
        uint256 underlyingBalance;
        uint64 startTime;
        uint64 endTime;
        uint8 stageCount; 
        uint8 timelockType;
        uint8 underlyingDecimals;
        address underlyingAddress;
        string underlyingSymbol;
        string sftName;
        string backgroundImage;
    }

    string[] internal _darkColorSet = [
        "#352C63", "#231C3F", "#09326C", "#082145", "#0E4A69", "#0C2F42", "#115337", "#133527", 
        "#896A21", "#3D2E00", "#603912", "#43290F", "#50253F", "#341829", "#2C3E5D", "#172B4D"  
    ];
    string[] internal _lightColorSet = [
        "#B8ACF6", "#9886F2", "#85B8FF", "#388BFF", "#91EBFF", "#23D7FF", "#7EE2B8", "#2ABB7F", 
        "#F5CD47", "#CF9F02", "#FEC57B", "#F18D13", "#F797D2", "#EB53B1", "#DCDFE4", "#BDC8DC"
    ];

    mapping(address => string[2]) public designatedColors;

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner");
        _;
    }

    constructor(address owner_) {
		owner = owner_;
    }

    function setBackgroundColors(address sftAddress_, string[2] memory colors_) external onlyOwner virtual {
        designatedColors[sftAddress_] = colors_;
        emit SetColor(sftAddress_, colors_);
    }

    function generateSVG(address sft_, uint256 tokenId_) external view virtual returns (string memory) {
        TimelockedERC20ContainerDelegate timelockedERC20ContainerDelegate = TimelockedERC20ContainerDelegate(sft_);
        TimelockedERC20ContainerConcrete timelockedERC20ContainerConcrete = TimelockedERC20ContainerConcrete(timelockedERC20ContainerDelegate.concrete());
        TimelockedERC20ContainerMetadataDescriptor descriptor = TimelockedERC20ContainerMetadataDescriptor(address(timelockedERC20ContainerDelegate.metadataDescriptor()));

        uint8 sftDecimals = timelockedERC20ContainerDelegate.valueDecimals();
        uint256 slot = timelockedERC20ContainerDelegate.slotOf(tokenId_);
        TimelockedERC20ContainerConcrete.TimelockSlotInfo memory slotInfo = timelockedERC20ContainerConcrete.slotInfo(slot);

        SVGParams memory svgParams;
        svgParams.sftAddress = sft_;
        svgParams.slot = slot;
        svgParams.sftName = timelockedERC20ContainerDelegate.name();
        svgParams.underlyingAddress = slotInfo.erc20;
        svgParams.underlyingSymbol = ERC20(slotInfo.erc20).symbol();
        svgParams.underlyingDecimals = ERC20(slotInfo.erc20).decimals();
        svgParams.backgroundImage = descriptor.getBackgroundImage(sft_);

        svgParams.tokenId = tokenId_;
        svgParams.underlyingBalance = timelockedERC20ContainerDelegate.balanceOf(tokenId_) * (10 ** svgParams.underlyingDecimals) / (10 ** sftDecimals);
        svgParams.timelockType = uint8(slotInfo.timelockType);

        svgParams.stageCount = uint8(slotInfo.terms.length);
        svgParams.startTime = slotInfo.startTime > 0 ? slotInfo.startTime : slotInfo.latestStartTime;
        
        svgParams.endTime = svgParams.startTime;
        for (uint256 i = 0; i < slotInfo.terms.length; i++) {
            svgParams.endTime += slotInfo.terms[i];
        }

        return _generateSVG(svgParams);
    }

    function _generateSVG(SVGParams memory params) internal view virtual returns (string memory) {
        return 
            string(
                abi.encodePacked(
                    '<svg width="600" height="400" viewBox="0 0 600 400" fill="none" xmlns="http://www.w3.org/2000/svg">',
                        _generateDefs(params),
                        _generateBackground(params),
                        _generateTitle(params),
                        _generateTypeAndDate(params),
                        '<rect x="0.5" y="0.5" width="599" height="399" rx="19.5" stroke="#F2F3F5" />',
                    '</svg>'
                )
            );
    }

    function _generateDefs(SVGParams memory params) internal view virtual returns (string memory) {
        string[2] memory colors = _getSVGColors(params);

        return 
            string(
                abi.encodePacked(
                    '<defs>',
                        params.timelockType == 0 ? _getLinearDefs(colors) : params.timelockType == 1 ? _getOneTimeDefs(colors) : _getStagedDefs(colors),
                        '<pattern id="bg_img" patternUnits="userSpaceOnUse" width="300" height="400">',
                            '<image href="', params.backgroundImage, '" width="300" height="400" />',
                        '</pattern>',
                        '<mask id="m0" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0.5" y="0.5" width="599" height="399">',
                            '<rect width="599" height="399" rx="19.5" fill="#1E1F22" />',
                        '</mask>',
                        '<mask id="m1" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="300" y="0" width="300" height="400">',
                            '<rect x="300" width="300" height="400" fill="', colors[0], '" />',
                        '</mask>',
                    '</defs>'
                )
            );
    }

    function _generateBackground(SVGParams memory params) internal view virtual returns (string memory) {
        string[2] memory colors = _getSVGColors(params);

        return 
            string(
                abi.encodePacked(
                    '<g mask="url(#m0)">',
                        '<rect x="0.5" y="0.5" width="599" height="399" rx="19.5" fill="#1E1F22" />',
                        '<rect x="300" width="300" height="400" fill="', colors[0], '" />',
                        '<g mask="url(#m1)">',
                            params.timelockType == 0 ? abi.encodePacked(
                                '<path d="M620 -34L352 428L248 368L516 -94Z" fill="url(#l1)" />',
                                '<path d="M280 433L556 -44L660 15L384 493Z" fill="url(#l2)" />'
                            ) : params.timelockType == 1 ? abi.encodePacked(
                                '<rect width="89" height="89" transform="matrix(0.5 -0.866 1 0 354.264 199.684)" fill="url(#l1)" />',
                                '<rect width="89" height="89" transform="matrix(1 0 0.5 0.866 354.264 199.684)" fill="url(#l2)" />',
                                '<rect width="89" height="89" transform="matrix(0.5 -0.866 0.5 0.866 443.287 199.702)" fill="url(#l3)" />',
                                '<path d="M442.6 199.8L487.6 122.8" stroke="url(#l4)" />',
                                '<path d="M442.6 199.8L354.5 199.8" stroke="url(#l5)" />',
                                '<path d="M442.6 199.8L488 277.5" stroke="url(#l6)" />'
                            ) : abi.encodePacked(
                                '<path d="M300 300L458 300L458 188L569 188L569 0L479 0L479 98L368 98L368 210L300 210Z" fill="url(#l1)" />',
                                '<path d="M387 400L387 340L499 340L499 228L600 228L600 0L520 0L520 138L408 138L408 250L300 250L300 400Z" fill="url(#l2)" />'
                            ),
                            '<rect x="300" width="300" height="400" fill="url(#bg_img)" />',
                        '</g>',
                    '</g>'
                )
            );
    }

    function _generateTitle(SVGParams memory params) internal view virtual returns (string memory) {
        string[2] memory colors = _getSVGColors(params);

        return 
            string(
                abi.encodePacked(
                    abi.encodePacked(
                        '<text fill="white" font-family="Arial" font-weight="bold">',
                            '<tspan font-size="16" x="26" y="61">', params.underlyingSymbol, ' AMOUNT</tspan>',
                            '<tspan font-size="38" x="26" y="108">',
                                _formatValue(params.underlyingBalance, params.underlyingDecimals), 
                            '</tspan>',
                            '<tspan font-size="14" fill="', colors[1], '" x="26" y="144">', params.sftName, '</tspan>',
                            '<tspan font-size="12" font-weight="normal" x="26" y="160">#', params.tokenId.toString(), '</tspan>',
                        '</text>'
                    ),
                    abi.encodePacked(
                        '<text fill="white" font-family="Arial" font-size="7">',
                            '<tspan x="507" y="377">Powered by SFT Labs</tspan>',
                            '<tspan x="26" y="377">', 
                                params.underlyingSymbol, ' Contract: ', params.underlyingAddress.toHexString(), 
                            '</tspan>',
                        '</text>'
                    )
                )
            );
    }

    function _generateTypeAndDate(SVGParams memory params) internal view virtual returns (string memory) {
        string[2] memory colors = _getSVGColors(params);

        if (params.timelockType == 0) {
            return 
                string(
                    abi.encodePacked(
                        '<rect x="143" y="278" width="61" height="16" rx="8" fill="', colors[1], '" />',
                        '<text fill="white" font-family="Arial" font-size="12">',
                            '<tspan x="26" y="290">TYPE</tspan>',
                            '<tspan x="26" y="312">START DATE</tspan>',
                            '<tspan x="26" y="332">END DATE</tspan>',
                            '<tspan x="143" y="312">', uint256(params.startTime).dateToString(), '</tspan>',
                            '<tspan x="143" y="332">', uint256(params.endTime).dateToString(), '</tspan>',
                            '<tspan font-size="10" fill="#1E1F22" x="155.5" y="289.5">LINEAR</tspan>',
                        '</text>'
                    )
                );
        } else if (params.timelockType == 1) {
            return 
                string(
                    abi.encodePacked(
                        '<rect x="143" y="298" width="61" height="16" rx="8" fill="', colors[1], '" />',
                        '<text fill="white" font-family="Arial" font-size="12">',
                            '<tspan x="26" y="310">TYPE</tspan>',
                            '<tspan x="26" y="332">VESTING DATE</tspan>',
                            '<tspan x="143" y="332">', uint256(params.endTime).dateToString(), '</tspan>',
                            '<tspan font-size="10" fill="#1E1F22" x="149" y="309.5">ONE-TIME</tspan>',
                        '</text>'
                    )
                );
        } else {
            return 
                string(
                    abi.encodePacked(
                        '<rect x="143" y="278" width="61" height="16" rx="8" fill="', colors[1], '" />',
                        '<text fill="white" font-family="Arial" font-size="12">',
                            '<tspan x="26" y="290">TYPE</tspan>',
                            '<tspan x="26" y="312">FIRST STAGE</tspan>',
                            '<tspan x="26" y="332">LAST STAGE</tspan>',
                            '<tspan x="143" y="312">', uint256(params.startTime).dateToString(), '</tspan>',
                            '<tspan x="143" y="332">', uint256(params.endTime).dateToString(), '</tspan>',
                            '<tspan font-size="10" fill="#1E1F22" text-anchor="middle" x="174" y="289.5">', uint256(params.stageCount).toString(), ' STAGES</tspan>',
                        '</text>'
                    )
                );
        }
    }

    function _formatValue(uint256 value, uint8 decimals) private pure returns (bytes memory) {
        return value.toDecimalsString(decimals).trimRight(decimals - 2).addThousandsSeparator();
    }

    function _getSVGColors(SVGParams memory params) internal view virtual returns (string[2] memory colors) {
        colors = designatedColors[params.sftAddress];
        if (bytes(colors[0]).length == 0 || bytes(colors[1]).length == 0) {
            uint256 darkColorIndex = params.slot % 16;
            uint256 lightColorIndex = (params.slot / params.startTime) % 16;
            colors = [_darkColorSet[darkColorIndex], _lightColorSet[lightColorIndex]];
        }
    }

    function _getLinearDefs(string[2] memory colors) internal view virtual returns (bytes memory) {
        return abi.encodePacked(
            '<linearGradient id="l1" x1="600" y1="-116" x2="300" y2="400" gradientUnits="userSpaceOnUse">',
                '<stop offset="0.25" stop-color="', colors[1], '" />',
                '<stop offset="1" stop-color="', colors[0], '" />',
            '</linearGradient>',
            '<linearGradient id="l2" x1="300" y1="515" x2="608" y2="-15" gradientUnits="userSpaceOnUse">'
                '<stop offset="0.2" stop-color="', colors[1], '" />'
                '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />'
            '</linearGradient>'
        );
    }

    function _getOneTimeDefs(string[2] memory colors) internal view virtual returns (bytes memory) {
        return abi.encodePacked(
            abi.encodePacked(
                '<linearGradient id="l1" x1="90" y1="0" x2="0" y2="0" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" stop-opacity="0.8" />',
                    '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
                '</linearGradient>',
                '<linearGradient id="l2" x1="5" y1="88" x2="94" y2="83" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" stop-opacity="0.8" />',
                    '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
                '</linearGradient>'
            ),
            abi.encodePacked(
                '<linearGradient id="l3" x1="89" y1="90" x2="-9" y2="86" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" stop-opacity="0.9" />',
                    '<stop offset="1" stop-color="', colors[0], '" />',
                '</linearGradient>',
                '<linearGradient id="l4" x1="443" y1="200" x2="488" y2="123" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" />',
                    '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
                '</linearGradient>'
            ),
            abi.encodePacked(
                '<linearGradient id="l5" x1="443" y1="200" x2="354" y2="200" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" />',
                    '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
                '</linearGradient>',
                '<linearGradient id="l6" x1="443" y1="200" x2="488" y2="278" gradientUnits="userSpaceOnUse">',
                    '<stop stop-color="', colors[1], '" />',
                    '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
                '</linearGradient>'
            )
        );
    }

    function _getStagedDefs(string[2] memory colors) internal view virtual returns (bytes memory) {
        return abi.encodePacked(
            '<linearGradient id="l1" x1="570" y1="30" x2="320" y2="300" gradientUnits="userSpaceOnUse">',
                '<stop offset="0.0552203" stop-color="', colors[1], '" />',
                '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
            '</linearGradient>',
            '<linearGradient id="l2" x1="300" y1="405" x2="540" y2="35" gradientUnits="userSpaceOnUse">',
                '<stop stop-color="', colors[1], '" />',
                '<stop offset="1" stop-color="', colors[0], '" stop-opacity="0" />',
            '</linearGradient>'
        );
    }

}