#!/usr/bin/env cwl-runner

class: CommandLineTool

description: |
  The open source SeqWare project is a portable software infrastructure designed to analyze massive genomics datasets produced by contemporary and emerging technologies, in particular Next Generation Sequencing (NGS) platforms. It consists of a comprehensive suite of infrastructure tools focused on enabling the end-to-end analysis of sequence data – from from raw base calling to analyzed variants ready for interpretation by users. 

dct:creator:
  "@id": "http://orcid.org/orcid.org/0000-0002-6130-1021"
  foaf:name: "Denis Yuen"
  foaf:mbox: "mailto:denis.yuen@oicr.on.ca"

dct:description: "Distribution of SeqWare https://seqware.github.io/"

requirements:
  - class: ExpressionEngineRequirement
    id: "#node-engine"
    requirements:
    - class: DockerRequirement
      dockerPull: commonworkflowlanguage/nodejs-engine
    engineCommand: cwlNodeEngine.js
  - class: DockerRequirement
    dockerPull: seqware/seqware_full


baseCommand: ["seqware"]
