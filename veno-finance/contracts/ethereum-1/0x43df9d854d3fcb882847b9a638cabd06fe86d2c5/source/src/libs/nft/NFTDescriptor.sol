// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";
import {DateTime} from "@quant-finance/solidity-datetime/contracts/DateTime.sol";
import {NFTSVG} from "./NFTSVG.sol";
import {DecimalString} from "../DecimalString.sol";

library NFTDescriptor {
    using Strings for uint256;

    struct ConstructTokenURIParams {
        uint256 tokenId;
        address owner;
        uint128 unlockEndTime;
        uint256 batchNo;
        uint8 liquidTokenDecimal;
        // total liquid token amount pending unlock
        uint256 liquidTokenAmount;
        // liquidToken to token rate - this can decrease in the event of slashing, require divide by 1e18
        uint256 liquidToken2TokenExchangeRate;
        uint8 exchangeRateDecimal;
        string liquidTokenSymbol;
        string tokenSymbol;
    }

    function generateNFTParams(ConstructTokenURIParams memory params) private pure returns (NFTSVG.SVGParams memory) {
        uint256 tokenAmount =
            getTokenAmount(params.liquidTokenAmount, params.liquidToken2TokenExchangeRate, params.exchangeRateDecimal);
        uint256 liquidTokenAmount = getliquidTokenAmount(params.liquidTokenAmount);

        string memory exchangeRate =
            DecimalString.decimalString(params.liquidToken2TokenExchangeRate, params.exchangeRateDecimal, false).result;

        NFTSVG.SVGParams memory _params = NFTSVG.SVGParams({
            tokenId: params.tokenId,
            owner: addressToString(params.owner),
            unlockEndTime: getTimeInFormat(params.unlockEndTime),
            batchNo: params.batchNo,
            liquidTokenAmount: liquidTokenAmount,
            liquidTokenDecimal: params.liquidTokenDecimal,
            tokenAmount: tokenAmount,
            exchangeRate: exchangeRate,
            liquidTokenSymbol: params.liquidTokenSymbol,
            tokenSymbol: params.tokenSymbol
        });

        return _params;
    }

    function constructTokenURI(ConstructTokenURIParams memory params) internal pure returns (string memory) {
        NFTSVG.SVGParams memory svgParams = generateNFTParams(params);

        DecimalString.Result memory tokenAmountString =
            DecimalString.decimalString(svgParams.tokenAmount, svgParams.liquidTokenDecimal, false);

        string memory name = string(
            abi.encodePacked(
                "Veno Finance - Claim ", tokenAmountString.result, svgParams.tokenSymbol, " @ ", svgParams.unlockEndTime
            )
        );

        DecimalString.Result memory liquidTokenAmountString =
            DecimalString.decimalString(svgParams.liquidTokenAmount, svgParams.liquidTokenDecimal, false);

        string memory descriptionPart1 = generateDescriptionPart1(
            tokenAmountString.result,
            svgParams.unlockEndTime,
            svgParams.owner,
            svgParams.liquidTokenSymbol,
            svgParams.tokenSymbol
        );
        // To bypass compilation error, variable length is too long have to separate to two variables.
        string memory descriptionPart2 = generateDescriptionPart2(
            tokenAmountString.result,
            liquidTokenAmountString.result,
            svgParams.unlockEndTime,
            svgParams.tokenId,
            svgParams.liquidTokenSymbol,
            svgParams.tokenSymbol
        );

        string memory image = Base64.encode(bytes(generateSVGImage(svgParams)));

        return string(
            abi.encodePacked(
                "data:application/json;base64,",
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name":"',
                            name,
                            '", "description":"',
                            descriptionPart1,
                            descriptionPart2,
                            '", "image": "',
                            "data:image/svg+xml;base64,",
                            image,
                            '", "attributes":',
                            generateTraits(tokenAmountString.result, liquidTokenAmountString.result, svgParams),
                            "}"
                        )
                    )
                )
            )
        );
    }

    function generateSVGImage(NFTSVG.SVGParams memory params) internal pure returns (string memory) {
        return NFTSVG.generateSVGImage(params);
    }

    function generateDescriptionPart1(
        string memory tokenAmount,
        string memory unlockEndTime,
        string memory owner,
        string memory liquidTokenSymbol,
        string memory tokenSymbol
    ) internal pure returns (string memory) {
        return string(
            abi.encodePacked(
                "This NFT represents a claim to ",
                tokenAmount,
                " ",
                tokenSymbol,
                " that will be available after ",
                unlockEndTime,
                "\\n",
                liquidTokenSymbol,
                " Address: ",
                owner,
                "\\n"
            )
        );
    }

    function generateDescriptionPart2(
        string memory tokenAmount,
        string memory liquidTokenAmount,
        string memory unlockEndTime,
        uint256 tokenId,
        string memory liquidTokenSymbol,
        string memory tokenSymbol
    ) private pure returns (string memory) {
        return string(
            abi.encodePacked(
                liquidTokenSymbol,
                " burned: ",
                liquidTokenAmount,
                "\\n",
                tokenSymbol,
                " to claim: ",
                tokenAmount,
                "\\n",
                "Est. unbound date: ",
                unlockEndTime,
                "\\n",
                "TokenId: ",
                tokenId.toString()
            )
        );
    }

    function generateTraits(string memory tokenAmount, string memory liquidTokenAmount, NFTSVG.SVGParams memory params)
        private
        pure
        returns (string memory)
    {
        return string(
            abi.encodePacked(
                '[{"trait_type":"ETH unstake amount","value":"',
                tokenAmount,
                '"},{"trait_type":"LETH unstake amount","value":"',
                liquidTokenAmount,
                '"},{"trait_type":"Unstake Date","value":"',
                params.unlockEndTime,
                '"},{"trait_type":"Batch No","value":"',
                params.batchNo,
                '"},{"trait_type": "Exchange rate","value":"',
                params.exchangeRate,
                '"}]'
            )
        );
    }

    function getTimeInFormat(uint256 time) private pure returns (string memory) {
        (uint256 year, uint256 month, uint256 day) = DateTime.timestampToDate(time);

        return string(abi.encodePacked(year.toString(), "/", month.toString(), "/", day.toString()));
    }

    function getTokenAmount(uint256 liquidTokenAmount, uint256 liquidToken2TokenExchangeRate, uint8 exchangeRateDecimal)
        private
        pure
        returns (uint256)
    {
        uint256 tokenAmount = (liquidTokenAmount * liquidToken2TokenExchangeRate) / 10 ** exchangeRateDecimal;
        uint256 tokenAmountRounded = tokenAmount;

        // round down tokenAmount to the nearest 2 decimal place
        if (tokenAmount > 1e16) {
            tokenAmountRounded = tokenAmount - (tokenAmount % 1e16);
        }
        return tokenAmountRounded;
    }

    function getliquidTokenAmount(uint256 liquidTokenAmount) private pure returns (uint256) {
        uint256 liquidTokenAmountRounded = liquidTokenAmount;

        // round down tokenAmount to the nearest 2 decimal place
        if (liquidTokenAmount > 1e16) {
            liquidTokenAmountRounded = liquidTokenAmount - (liquidTokenAmount % 1e16);
        }

        return liquidTokenAmountRounded;
    }

    function addressToString(address addr) private pure returns (string memory) {
        return (uint256(uint160(addr))).toHexString(20);
    }
}
