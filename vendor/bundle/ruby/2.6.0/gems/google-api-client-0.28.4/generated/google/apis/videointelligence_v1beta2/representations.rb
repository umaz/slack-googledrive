# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module VideointelligenceV1beta2
      
      class GoogleCloudVideointelligenceV1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1SpeechTranscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechTranscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1beta2WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p1beta1WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1SpeechTranscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1p2beta1WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1WordInfo, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1WordInfo::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1SpeechTranscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1SpeechRecognitionAlternative, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1SpeechRecognitionAlternative::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1LabelAnnotation::Representation
      
          collection :speech_transcriptions, as: 'speechTranscriptions', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1SpeechTranscription, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1SpeechTranscription::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_time, as: 'endTime'
          property :speaker_tag, as: 'speakerTag'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features'
          property :input_content, :base64 => true, as: 'inputContent'
          property :input_uri, as: 'inputUri'
          property :location_id, as: 'locationId'
          property :output_uri, as: 'outputUri'
          property :video_context, as: 'videoContext', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoContext, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoContext::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_detection_mode, as: 'labelDetectionMode'
          property :model, as: 'model'
          property :stationary_camera, as: 'stationaryCamera'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :phrases, as: 'phrases'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2WordInfo, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2WordInfo::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechTranscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audio_tracks, as: 'audioTracks'
          property :diarization_speaker_count, as: 'diarizationSpeakerCount'
          property :enable_automatic_punctuation, as: 'enableAutomaticPunctuation'
          property :enable_speaker_diarization, as: 'enableSpeakerDiarization'
          property :enable_word_confidence, as: 'enableWordConfidence'
          property :filter_profanity, as: 'filterProfanity'
          property :language_code, as: 'languageCode'
          property :max_alternatives, as: 'maxAlternatives'
          collection :speech_contexts, as: 'speechContexts', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechContext, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechContext::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelAnnotation::Representation
      
          collection :speech_transcriptions, as: 'speechTranscriptions', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechTranscription, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechTranscription::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_content_detection_config, as: 'explicitContentDetectionConfig', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig::Representation
      
          property :label_detection_config, as: 'labelDetectionConfig', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelDetectionConfig, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2LabelDetectionConfig::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2VideoSegment::Representation
      
          property :shot_change_detection_config, as: 'shotChangeDetectionConfig', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig::Representation
      
          property :speech_transcription_config, as: 'speechTranscriptionConfig', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1beta2WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_time, as: 'endTime'
          property :speaker_tag, as: 'speakerTag'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1WordInfo, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1WordInfo::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1LabelAnnotation::Representation
      
          collection :speech_transcriptions, as: 'speechTranscriptions', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1SpeechTranscription, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p1beta1SpeechTranscription::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p1beta1WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_time, as: 'endTime'
          property :speaker_tag, as: 'speakerTag'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_progress, as: 'annotationProgress', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_results, as: 'annotationResults', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :entity_id, as: 'entityId'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pornography_likelihood, as: 'pornographyLikelihood'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :category_entities, as: 'categoryEntities', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity::Representation
      
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelFrame::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1LabelSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom, as: 'bottom'
          property :left, as: 'left'
          property :right, as: 'right'
          property :top, as: 'top'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedVertex, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedVertex::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :entity, as: 'entity', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1Entity::Representation
      
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame::Representation
      
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment::Representation
      
          property :track_id, :numeric_string => true, as: 'trackId'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :normalized_bounding_box, as: 'normalizedBoundingBox', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox::Representation
      
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1WordInfo, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1WordInfo::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1SpeechTranscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segments, as: 'segments', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextSegment::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rotated_bounding_box, as: 'rotatedBoundingBox', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly::Representation
      
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1TextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          collection :frames, as: 'frames', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextFrame, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextFrame::Representation
      
          property :segment, as: 'segment', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus::Representation
      
          property :explicit_annotation, as: 'explicitAnnotation', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation::Representation
      
          collection :frame_label_annotations, as: 'frameLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation::Representation
      
          property :input_uri, as: 'inputUri'
          collection :object_annotations, as: 'objectAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation::Representation
      
          collection :segment_label_annotations, as: 'segmentLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation::Representation
      
          collection :shot_annotations, as: 'shotAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1VideoSegment::Representation
      
          collection :shot_label_annotations, as: 'shotLabelAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1LabelAnnotation::Representation
      
          collection :speech_transcriptions, as: 'speechTranscriptions', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1SpeechTranscription, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1SpeechTranscription::Representation
      
          collection :text_annotations, as: 'textAnnotations', class: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextAnnotation, decorator: Google::Apis::VideointelligenceV1beta2::GoogleCloudVideointelligenceV1p2beta1TextAnnotation::Representation
      
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1VideoSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudVideointelligenceV1p2beta1WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_time, as: 'endTime'
          property :speaker_tag, as: 'speakerTag'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus, decorator: Google::Apis::VideointelligenceV1beta2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
